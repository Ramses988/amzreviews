$(document).ajaxError(function (event, jqXHR, options, jsExc) {
    warningNoty(jqXHR);
});

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
            failNoty("Проверьте правильность заплонения полей!");
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
                successNoty("Выкупы успешно добавлены");
            })
        } else {
            failNoty("Проверьте правильность заплонения полей!");
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

    function email(data) {

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
        });

        return chek;
    }

    $('.required').blur(function(){
        var data = $(this).val();

            if(required(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Это поле не может быть пустым.");
                return false;
            }
        if($(this).hasClass("lenth")) {
            if(lenth(data, 50)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Значение поля не может привышать 50 символов");
                return false;
            }
        }
        if($(this).hasClass("number")) {
            if(number(data)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Должно быть только целое число");
                return false;
            }
        }
        if($(this).hasClass("range")) {
            if(range(data, 100)) {
                $(this).closest('.form-group').addClass('has-error');
                $(this).closest('.form-group').find('.form-validation').text("Число должно быть от 1 до 100");
                return false;
            }
        }
        $(this).closest('.form-group').removeClass('has-error');
        $(this).closest('.form-group').find('.form-validation').empty();
    });
});