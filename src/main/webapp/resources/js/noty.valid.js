$(document).ajaxError(function (event, jqXHR, options, jsExc) {
    warningNoty(jqXHR);
});

$msgError = "Check that the fields are filled correctly!";

function successNoty(msg) {
    new Noty({
        theme: 'relax',
        text: "<span class='fa fa-lg fa-check'></span> &nbsp;"+msg,
        type: 'success',
        layout: "topRight",
        timeout: 3000
    }).show();
}

function warningNoty(jqXHR) {
    new Noty({
        theme: 'relax',
        text: "<span class='fa fa-lg fa-warning'></span> &nbsp;" + jqXHR.responseJSON,
        type: "warning",
        layout: "topRight"
    }).show();
}

function failNoty(msg) {
    new Noty({
        theme: 'relax',
        text: "<span class='fa fa-lg fa-exclamation-circle'></span> &nbsp;"+msg,
        type: 'error',
        layout: "topRight",
        timeout: 3000
    }).show();
}

$(function () {

    $('.btn-reserveProduct').click(function () {
        $.ajax({
            type: "POST",
            url: "/rest/customer/product-reserve",
            data: $('#reserveProduct').serialize()
        }).done(function () {
            window.location.href = "/customer/history";
        })
    });

    $('.btn-updateProfile').click(function () {
        if(validForm("#userProfile")) {
            $.ajax({
                type: "POST",
                url: "/rest/account/update-profile",
                data: $('#userProfile').serialize()
            }).done(function () {
                successNoty("Profile updated!");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-add').click(function () {
        if(validForm("#detailsFormProduct")) {
            $.ajax({
                type: "POST",
                url: "/rest/seller/add-product",
                data: $('#detailsFormProduct').serialize()
            }).done(function () {
                $('.modal').fadeOut();
                $('.info-modal').fadeIn();
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.open-product').click(function () {
        $(':input[type=text]').val("");
        $('.form-group').removeClass('has-error');
        $('.form-validation').empty();
        $('.product-modal').fadeIn();
        return false;
    });

    $('.btn-order').click(function () {
        if(validForm("#detailsFormOrder")) {
            $.ajax({
                type: "POST",
                url: "/rest/seller/add-order",
                data: $('#detailsFormOrder').serialize()
            }).done(function () {
                $('.modal').fadeOut();
                angular.element('#getAllController').scope().updateProducts();
                successNoty("Buyouts have been successfully added!");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-changePassword').click(function () {
        if(validForm("#changePassword")) {
            $.ajax({
                type: "POST",
                url: "/rest/account/change-password",
                data: $('#changePassword').serialize()
            }).done(function () {
                $('#changePassword').trigger('reset');
                successNoty("Password successfully changed!");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-orderid').click(function () {
        if(validForm("#detailsFormOrderId")) {
            $.ajax({
                type: "POST",
                url: "/rest/customer/add-orderid",
                data: $('#detailsFormOrderId').serialize()
            }).done(function () {
                $('.modal').fadeOut();
                loading("#datatable", "active");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-reviews').click(function () {
        if(validForm("#detailsFormReviews")) {
            $.ajax({
                type: "POST",
                url: "/rest/customer/add-review",
                data: $('#detailsFormReviews').serialize()
            }).done(function () {
                $('.modal').fadeOut();
                loading("#datatable", "active");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-feedback').click(function () {
        if(validForm("#fromFeedback")) {
            $.ajax({
                type: "POST",
                url: "/rest/account/feedback",
                data: $('#fromFeedback').serialize()
            }).done(function () {
                $('#fromFeedback').trigger('reset');
                successNoty("Request sent!");
            })
        } else {
            failNoty($msgError);
        }
    });

    $('.btn-register').click(function () {
        if(validForm("#userRegister")) {
            $.ajax({
                type: "POST",
                url: "/rest/account/register",
                data: $('#userRegister').serialize()
            }).done(function () {
                window.location.href = "/success";
            })
        } else {
            failNoty($msgError);
        }
    });

    function required(data) {
        return (data.trim() === '');
    }

    function lenth(data, count) {
        return (data.length > count);
    }

    function number(data) {
        return (!data.match(/^[0-9]+$/));
    }

    function range(data, count) {
        return (data <= 0 || data > count);
    }

    function password(data) {
        return (data.length < 7 || data.length > 15);
    }

    function email(data) {
        return (!data.match(/\S+@\S+\.\S+/));
    }

    function validForm(data) {
        var chek = true;
        $(data).find('.required').each(function(index, el) {
            var v = $(el).val();
            if(required(v)) {
                chek = false;
            }
            if($(el).hasClass("lenth")) {
                if(lenth(v, 50)) {
                    chek = false;
                }
            }
            if($(el).hasClass("textarea")) {
                if(lenth(v, 500)) {
                    chek = false;
                }
            }
            if($(el).hasClass("email")) {
                if(email(v)) {
                    chek = false;
                }
            }
            if($(el).hasClass("number")) {
                if(number(v)) {
                    chek = false;
                }
            }
            if($(el).hasClass("range")) {
                if(range(v, 100)) {
                    chek = false;
                }
            }
            if($(el).hasClass("password")) {
                if(password(v)) {
                    chek = false;
                }
            }
        });

        return chek;
    }

    $('.required').blur(function(){
        var data = $(this).val();

            if(required(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("This is a required field.");
                return false;
            }
        if($(this).hasClass("lenth")) {
            if(lenth(data, 50)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("The value of this field cannot exceed 50 characters.");
                return false;
            }
        }
        if($(this).hasClass("textarea")) {
            if(lenth(data, 500)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Text cannot exceed 500 characters.");
                return false;
            }
        }
        if($(this).hasClass("email")) {
            if(email(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Please enter a valid email address!");
                return false;
            }
        }
        if($(this).hasClass("number")) {
            if(number(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Must be an integer.");
                return false;
            }
        }
        if($(this).hasClass("range")) {
            if(range(data, 100)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("The number should be from 1 to 100");
                return false;
            }
        }
        if($(this).hasClass("password")) {
            if(password(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Password must contain at least 7 character.");
                return false;
            }
        }
        $(this).closest('.form-group').removeClass('has-error');
        $(this).closest('.form-group').find('.form-validation').empty();
    });
});