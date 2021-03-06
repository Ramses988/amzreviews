"use strict"; 
var userAgent = navigator.userAgent.toLowerCase(), initialDate = new Date(), $document = $(document), $window = $(window), $html = $("html"),
    isDesktop = $html.hasClass("desktop"),
    isIE = userAgent.indexOf("msie") != -1 ? parseInt(userAgent.split("msie")[1]) : userAgent.indexOf("trident") != -1 ? 11 : userAgent.indexOf("edge") != -1 ? 12 : false,
    isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent), isNoviBuilder, plugins = { responsiveTabs: $(".responsive-tabs"), rdInputLabel: $(".form-label"),
        rdNavbar: $(".rd-navbar"), regula: $("[data-constraints]"), owl: $(".owl-carousel"), swiper: $(".swiper-slider"),
        selectFilter: $("select"), rdMailForm: $(".rd-mailform"),
        additionalFields: $(".additional-fields"),
        materialParallax: $(".parallax-container"), copyrightYear: $("#copyright-year"),
        maps: $(".google-map-container"), lightGallery: $("[data-lightgallery='group']"),
        lightGalleryItem: $("[data-lightgallery='item']"), lightDynamicGalleryItem: $("[data-lightgallery='dynamic']") };

function isScrolledIntoView(elem) { if (isNoviBuilder) return true;
return elem.offset().top + elem.outerHeight() >= $window.scrollTop() && elem.offset().top <= $window.scrollTop() + $window.height();
}

function lazyInit(element, func) {
    var scrollHandler = function () {
        if ((!element.hasClass('lazy-loaded') && (isScrolledIntoView(element)))) {
            func.call(); element.addClass('lazy-loaded'); } }; scrollHandler(); $window.on('scroll', scrollHandler);
}

$document.ready(function () {

    // isNoviBuilder = window.xMode; function getLatLngObject(str, marker, map, callback) { var coordinates = {}; try { coordinates = JSON.parse(str); callback(new google.maps.LatLng(coordinates.lat, coordinates.lng), marker, map) } catch (e) { map.geocoder.geocode({ 'address': str }, function (results, status) { if (status === google.maps.GeocoderStatus.OK) { var latitude = results[0].geometry.location.lat(); var longitude = results[0].geometry.location.lng(); callback(new google.maps.LatLng(parseFloat(latitude), parseFloat(longitude)), marker, map) } }) } }

        function toggleSwiperInnerVideos(swiper) {
            var videos;
            $.grep(swiper.slides, function (element, index) {
                var $slide = $(element), video;
                if (index === swiper.activeIndex) {
                    videos = $slide.find("video");
                    if (videos.length) {
                        videos.get(0).play();
                    }
                } else {
                    $slide.find("video").each(function () {
                        this.pause();
                    });
                }
            });
        }

    function toggleSwiperCaptionAnimation(swiper) {
            if (isIE && isIE < 10) {
                return;
            }
            var prevSlide = $(swiper.container), nextSlide = $(swiper.slides[swiper.activeIndex]);
            prevSlide.find("[data-caption-animate]").each(function () {
                var $this = $(this);
                $this.removeClass("animated").removeClass($this.attr("data-caption-animate")).addClass("not-animated");
            });
            nextSlide.find("[data-caption-animate]").each(function () {
                var $this = $(this), delay = $this.attr("data-caption-delay");
                setTimeout(function () {
                    $this.removeClass("not-animated").addClass($this.attr("data-caption-animate")).addClass("animated");
                }, delay ? parseInt(delay) : 0);
            });
        }

        // function initLightGallery(itemsToInit, addClass) { if (!isNoviBuilder) { $(itemsToInit).lightGallery({ thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false", selector: "[data-lightgallery='item']", autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true", pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000, addClass: addClass, mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide", loop: $(itemsToInit).attr("data-lg-loop") !== "false" }); } }
        // function initDynamicLightGallery(itemsToInit, addClass) { if (!isNoviBuilder) { $(itemsToInit).on("click", function () { $(itemsToInit).lightGallery({ thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false", selector: "[data-lightgallery='item']", autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true", pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000, addClass: addClass, mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide", loop: $(itemsToInit).attr("data-lg-loop") !== "false", dynamic: true, dynamicEl: JSON.parse($(itemsToInit).attr("data-lg-dynamic-elements")) || [] }); }); } }
        // function initLightGalleryItem(itemToInit, addClass) { if (!isNoviBuilder) { $(itemToInit).lightGallery({ selector: "this", addClass: addClass, counter: false, youtubePlayerParams: { modestbranding: 1, showinfo: 0, rel: 0, controls: 0 }, vimeoPlayerParams: { byline: 0, portrait: 0 } }); } }
        function initOwlCarousel() {

            $('.slider-main').owlCarousel({
                loop: true,
                dots: true,
                autoplay: true, //Автозапуск слайдера
                smartSpeed: 1000, //Время движения слайда
                autoplayTimeout: 5000, //Время смены слайда
                responsive: {
                    0: {
                        items: 1
                    }
                }
            });

            $('.slider-product').owlCarousel({
                loop: true,
                margin: 25,
                dots: true,
                autoplay: true, //Автозапуск слайдера
                smartSpeed: 1000, //Время движения слайда
                autoplayTimeout: 9000, //Время смены слайда
                nav: true,
                navSpeed: 1000,
                navText: ["<img src=\"/resources/images/left-button.png\" alt=\"left\"/>", "<img src=\"/resources/images/right-button.png\" alt=\"right\"/>"],
                responsive: {
                    0: {
                        items: 1
                    },
                    900: {
                        items: 2
                    },
                    1200: {
                        items: 3
                    }
                }
            });


            // c.on("initialized.owl.carousel", function () {
            //     initLightGalleryItem(c.find('[data-lightgallery="item"]'), 'lightGallery-in-carousel'); });
            //     c.owlCarousel({ autoplay: isNoviBuilder ? false : c.attr("data-autoplay") === "true", loop: isNoviBuilder ? false : c.attr("data-loop") !== "false", items: 1, center: c.attr("data-center") === "true", dotsContainer: c.attr("data-pagination-class") || false, navContainer: c.attr("data-navigation-class") || false, mouseDrag: isNoviBuilder ? false : c.attr("data-mouse-drag") !== "false", nav: c.attr("data-nav") === "true", dots: (isNoviBuilder && c.attr("data-nav") !== "true") ? true : c.attr("data-dots") === "true", dotsEach: c.attr("data-dots-each") ? parseInt(c.attr("data-dots-each"), 10) : false, animateIn: c.attr('data-animation-in') ? c.attr('data-animation-in') : false, animateOut: c.attr('data-animation-out') ? c.attr('data-animation-out') : false, responsive: responsive, navText: c.attr("data-nav-text") ? $.parseJSON(c.attr("data-nav-text")) : [], navClass: c.attr("data-nav-class") ? $.parseJSON(c.attr("data-nav-class")) : ['owl-prev', 'owl-next'] });
        }

       $('#reset-password').click(function () {
            $(':input[type=text]').val("");
           $('.reset-modal').fadeIn();
           return false;
      });

       $('.btn-reset').click(function () {
         $.ajax({
               type: "POST",
               url: "/rest/account/reset-password",
               data: $('#detailsFormReset').serialize()
          }).done(function () {
             $('.modal').fadeOut();
             $('.info-modal').fadeIn();
         })
     });


        $('.popup-close').click(function () {
            $(this).parents('.modal').fadeOut();
            return false;
        });

        $('.btn-cancel').click(function () {
            $(this).parents('.modal').fadeOut();
            return false;
        });

        $(document).keydown(function (e) {
            if (e.keyCode === 27) {
                e.stopPropagation();
                $('.modal').fadeOut();
            }
        });

        $('.modal').click(function (e) {
            if ($(e.target).closest('.modal-container').length == 0) {
                $(this).fadeOut();
            }
        });

        $('input[type=radio][name=review]').change(function () {
            constructerPrice();
        });

        $('.order-modal').find('#count').keyup(function () {
            constructerPrice();
        });

        function constructerPrice() {
            var fees = 5;
            if(parseInt($('input[name=review]:checked').val()) < 1) {
                fees = 3;
            }
            var main = $('.order-modal');
            var Value = parseInt(main.find('#count').val());
            var percent = 5;

            if(Value >= 1 && Value <= 100) {
                var price = parseFloat(main.find('#price').val());
                var priceFees = (price + fees) * Value;
                var percentPrice = (priceFees / 100) * percent;
                var totalPrice = priceFees + percentPrice;
                main.find('.price-red').text("$"+parseInt(totalPrice));
                main.find('#small-fees').text("Сбор Сервиса: $"+fees*Value);
                main.find('#small-percent').text("Комиссия: 5%");
                main.find('#small-price').text("Цена продукта: $"+price);
                // main.find('#label-hide').css({"display":"inline"});
            } else {
                // main.find('#label-hide').css({"display":"none"});
                main.find('#small-price').empty();
                main.find('.price-red').empty();
                main.find('#small-fees').empty();
                main.find('#small-percent').empty();
            }
        }


        // function attachFormValidator(elements) {
        //
        //     for (var i = 0; i < elements.length; i++) {
        //         var o = $(elements[i]), v;
        //         o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
        //         v = o.parent().find(".form-validation");
        //         if (v.is(":last-child")) {
        //             o.addClass("form-control-last-child");
        //         }
        //     }
        //     elements.on('input change propertychange blur', function (e) {
        //         var $this = $(this), results;
        //         if (e.type !== "blur") {
        //             if (!$this.parent().hasClass("has-error")) {
        //                 return;
        //             }
        //         }
        //         if ($this.parents('.rd-mailform').hasClass('success')) {
        //             return;
        //         }
        //         if ((results = $this.regula('validate')).length) {
        //             for (i = 0; i < results.length; i++) {
        //                 $this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error")
        //             }
        //         } else {
        //             $this.siblings(".form-validation").text("").parent().removeClass("has-error")
        //         }
        //     }).regula('bind');
        //     var regularConstraintsMessages = [{
        //         type: regula.Constraint.Required,
        //         newMessage: "The text field is required."
        //     }, {
        //         type: regula.Constraint.Email,
        //         newMessage: "The email is not a valid email."
        //     }, {
        //         type: regula.Constraint.Numeric,
        //         newMessage: "Only numbers are required"
        //     }, {type: regula.Constraint.Selected, newMessage: "Please choose an option."}];
        //     for (var i = 0; i < regularConstraintsMessages.length; i++) {
        //         var regularConstraint = regularConstraintsMessages[i];
        //         regula.override({constraintType: regularConstraint.type, defaultMessage: regularConstraint.newMessage});
        //     }
        // }

        // function isValidated(elements, captcha) {
        //     var results, errors = 0;
        //     if (elements.length) {
        //         for (j = 0; j < elements.length; j++) {
        //             var $input = $(elements[j]);
        //             if ((results = $input.regula('validate')).length) {
        //                 for (k = 0; k < results.length; k++) {
        //                     errors++;
        //                     $input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
        //                 }
        //             } else {
        //                 $input.siblings(".form-validation").text("").parent().removeClass("has-error")
        //             }
        //         }
        //         if (captcha) {
        //             if (captcha.length) {
        //                 return validateReCaptcha(captcha) && errors == 0
        //             }
        //         }
        //         return errors == 0;
        //     }
        //     return true;
        // }

        // function validateReCaptcha(captcha) {
        //     var captchaToken = captcha.find('.g-recaptcha-response').val();
        //     if (captchaToken.length === 0) {
        //         captcha.siblings('.form-validation').html('Please, prove that you are not robot.').addClass('active');
        //         captcha.closest('.form-group').addClass('has-error');
        //         captcha.on('propertychange', function () {
        //             var $this = $(this), captchaToken = $this.find('.g-recaptcha-response').val();
        //             if (captchaToken.length > 0) {
        //                 $this.closest('.form-group').removeClass('has-error');
        //                 $this.siblings('.form-validation').removeClass('active').html('');
        //                 $this.off('propertychange');
        //             }
        //         });
        //         return false;
        //     }
        //     return true;
        // }

        window.onloadCaptchaCallback = function () {
            for (i = 0; i < plugins.captcha.length; i++) {
                var $capthcaItem = $(plugins.captcha[i]);
                grecaptcha.render($capthcaItem.attr('id'), {
                    sitekey: $capthcaItem.attr('data-sitekey'),
                    size: $capthcaItem.attr('data-size') ? $capthcaItem.attr('data-size') : 'normal',
                    theme: $capthcaItem.attr('data-theme') ? $capthcaItem.attr('data-theme') : 'light',
                    callback: function (e) {
                        $('.recaptcha').trigger('propertychange');
                    }
                });
                $capthcaItem.after("<span class='form-validation'></span>");
            }
        };

        function makeParallax(el, speed, wrapper, prevScroll) {
            var scrollY = window.scrollY || window.pageYOffset;
            if (prevScroll != scrollY) {
                prevScroll = scrollY;
                el.addClass('no-transition');
                el[0].style['transform'] = 'translate3d(0,' + -scrollY * (1 - speed) + 'px,0)';
                el.height();
                el.removeClass('no-transition');
                if (el.attr('data-fade') === 'true') {
                    var bound = el[0].getBoundingClientRect(), offsetTop = bound.top * 2 + scrollY,
                        sceneHeight = wrapper.outerHeight(), sceneDevider = wrapper.offset().top + sceneHeight / 2.0,
                        layerDevider = offsetTop + el.outerHeight() / 2.0, pos = sceneHeight / 6.0, opacity;
                    if (sceneDevider + pos > layerDevider && sceneDevider - pos < layerDevider) {
                        el[0].style["opacity"] = 1;
                    } else {
                        if (sceneDevider - pos < layerDevider) {
                            opacity = 1 + ((sceneDevider + pos - layerDevider) / sceneHeight / 3.0 * 5);
                        } else {
                            opacity = 1 - ((sceneDevider - pos - layerDevider) / sceneHeight / 3.0 * 5);
                        }
                        el[0].style["opacity"] = opacity < 0 ? 0 : opacity > 1 ? 1 : opacity.toFixed(2);
                    }
                }
            }
            requestAnimationFrame(function () {
                makeParallax(el, speed, wrapper, prevScroll);
            });
        }

        if (isIE) {
            if (isIE < 10) $html.addClass("lt-ie-10");
            if (isIE < 11) $html.addClass("ie-10");
            if (isIE === 11) $("html").addClass("ie-11");
            if (isIE >= 12) $("html").addClass("ie-edge");
        }
        if (plugins.swiper.length) {
            plugins.swiper.each(function () {
                var slider = $(this), pag = slider.find(".swiper-pagination"),
                    next = slider.find(".swiper-button-next"), prev = slider.find(".swiper-button-prev"),
                    bar = slider.find(".swiper-scrollbar"), parallax = slider.parents('.rd-parallax').length;
                slider.find(".swiper-slide").each(function () {
                    var $this = $(this), url;
                    if (url = $this.attr("data-slide-bg")) {
                        $this.css({"background-image": "url(" + url + ")", "background-size": "cover"})
                    }
                }).end().find("[data-caption-animate]").addClass("not-animated").end().swiper({
                    autoplay: !isNoviBuilder && $.isNumeric(slider.attr('data-autoplay')) ? slider.attr('data-autoplay') : false,
                    direction: slider.attr('data-direction') || "horizontal",
                    effect: slider.attr('data-slide-effect') || "slide",
                    speed: slider.attr('data-slide-speed') || 600,
                    keyboardControl: !isNoviBuilder ? slider.attr('data-keyboard') === "true" : false,
                    mousewheelControl: !isNoviBuilder ? slider.attr('data-mousewheel') === "true" : false,
                    mousewheelReleaseOnEdges: slider.attr('data-mousewheel-release') === "true",
                    nextButton: next.length ? next.get(0) : null,
                    prevButton: prev.length ? prev.get(0) : null,
                    pagination: pag.length ? pag.get(0) : null,
                    simulateTouch: false,
                    paginationClickable: pag.length ? pag.attr("data-clickable") !== "false" : false,
                    paginationBulletRender: pag.length ? pag.attr("data-index-bullet") === "true" ? function (index, className) {
                        return '<span class="' + className + '">' + (index + 1) + '</span>';
                    } : null : null,
                    scrollbar: bar.length ? bar.get(0) : null,
                    scrollbarDraggable: bar.length ? bar.attr("data-draggable") !== "false" : true,
                    scrollbarHide: bar.length ? bar.attr("data-draggable") === "false" : false,
                    loop: !isNoviBuilder ? slider.attr('data-loop') !== "false" : false,
                    loopAdditionalSlides: 0,
                    loopedSlides: 0,
                    onTransitionStart: function (swiper) {
                        if (!isNoviBuilder) toggleSwiperInnerVideos(swiper);
                    },
                    onTransitionEnd: function (swiper) {
                        if (!isNoviBuilder) toggleSwiperCaptionAnimation(swiper);
                        $(window).trigger("resize");
                    },
                    onInit: function (swiper) {
                        if (!isNoviBuilder) toggleSwiperInnerVideos(swiper);
                        if (!isNoviBuilder) toggleSwiperCaptionAnimation(swiper);
                    }
                });
                $(window).load(function () {
                    slider.find("video").each(function () {
                        if (!$(this).parents(".swiper-slide-active").length) {
                            this.pause();
                        }
                    });
                }).trigger("resize");
            });
        }
        if (plugins.copyrightYear.length) {
            plugins.copyrightYear.text(initialDate.getFullYear());
        }
        if (plugins.responsiveTabs.length) {
            for (var i = 0; i < plugins.responsiveTabs.length; i++) {
                var $this = $(plugins.responsiveTabs[i]);
                $this.easyResponsiveTabs({
                    type: $this.attr("data-type"),
                    tabidentify: $this.find(".resp-tabs-list").attr("data-group") || "tab"
                });
            }
        }
        if (plugins.rdInputLabel.length) {
            plugins.rdInputLabel.RDInputLabel();
        }
        // if (plugins.regula.length) {
        //     attachFormValidator(plugins.regula);
        // }
        if (!isNoviBuilder && $html.hasClass('desktop') && $html.hasClass("wow-animation") && $(".wow").length) {
            new WOW().init();
        }
        if (plugins.owl.length) {
            for (var i = 0; i < plugins.owl.length; i++) {
                var c = $(plugins.owl[i]);
                plugins.owl[i] = c;
                if (!c.parents('.tab-content').length) {
                    initOwlCarousel(c);
                }
            }
        }
        if (plugins.rdNavbar.length) {
            var navbar = plugins.rdNavbar,
                aliases = {'0': '-', '480': '-xs-', '768': '-sm-', '992': '-md-', '1200': '-lg-'},
                responsiveNavbar = {};
            for (var alias in aliases) {
                responsiveNavbar[alias] = {};
                if (navbar.attr('data' + aliases[alias] + 'layout')) responsiveNavbar[alias].layout = navbar.attr('data' + aliases[alias] + 'layout'); else responsiveNavbar[alias].layout = 'rd-navbar-fixed';
                if (navbar.attr('data' + aliases[alias] + 'device-layout')) responsiveNavbar[alias].deviceLayout = navbar.attr('data' + aliases[alias] + 'device-layout'); else responsiveNavbar[alias].deviceLayout = 'rd-navbar-fixed';
                if (navbar.attr('data' + aliases[alias] + 'hover-on')) responsiveNavbar[alias].focusOnHover = navbar.attr('data' + aliases[alias] + 'hover-on') === 'true';
                if (navbar.attr('data' + aliases[alias] + 'auto-height')) responsiveNavbar[alias].autoHeight = navbar.attr('data' + aliases[alias] + 'auto-height') === 'true';
                if (navbar.attr('data' + aliases[alias] + 'stick-up-offset')) responsiveNavbar[alias].stickUpOffset = navbar.attr('data' + aliases[alias] + 'stick-up-offset');
                if (navbar.attr('data' + aliases[alias] + 'stick-up') && !isNoviBuilder) responsiveNavbar[alias].stickUp = navbar.attr('data' + aliases[alias] + 'stick-up') === 'true'; else responsiveNavbar[alias].stickUp = false;
                if ($.isEmptyObject(responsiveNavbar[alias])) delete responsiveNavbar[alias];
            }
            navbar.RDNavbar({
                stickUpClone: (!isNoviBuilder && navbar.attr("data-stick-up-clone")) ? navbar.attr("data-stick-up-clone") === 'true' : false,
                stickUpOffset: (navbar.attr("data-stick-up-offset")) ? navbar.attr("data-stick-up-offset") : 1,
                anchorNavOffset: -78,
                anchorNav: !isNoviBuilder,
                anchorNavEasing: 'linear',
                focusOnHover: !isNoviBuilder,
                responsive: responsiveNavbar,
                onDropdownOver: function () {
                    return !isNoviBuilder;
                }
            });
            if (navbar.attr("data-body-class")) {
                document.body.className += ' ' + navbar.attr("data-body-class");
            }
        }
        if (plugins.selectFilter.length) {
            var i;
            for (i = 0; i < plugins.selectFilter.length; i++) {
                var select = $(plugins.selectFilter[i]);
                select.select2({theme: "bootstrap"}).next().addClass(select.attr("class").match(/(input-sm)|(input-lg)|($)/i).toString().replace(new RegExp(",", 'g'), " "));
            }
        }
        if (!isNoviBuilder && isDesktop) {
            $().UItoTop({
                easingType: 'easeOutQuart',
                containerClass: 'ui-to-top icon icon-xs icon-circle icon-darker-filled mdi mdi-chevron-up'
            });
        }
        if (plugins.rdMailForm.length) {
            var i, j, k, msg = {
                'MF000': 'Successfully sent!',
                'MF001': 'Recipients are not set!',
                'MF002': 'Form will not work locally!',
                'MF003': 'Please, define email field in your form!',
                'MF004': 'Please, define type of your form!',
                'MF254': 'Something went wrong with PHPMailer!',
                'MF255': 'Aw, snap! Something went wrong.'
            };
            for (i = 0; i < plugins.rdMailForm.length; i++) {
                var $form = $(plugins.rdMailForm[i]), formHasCaptcha = false;
                $form.attr('novalidate', 'novalidate').ajaxForm({
                    data: {"form-type": $form.attr("data-form-type") || "contact", "counter": i},
                    beforeSubmit: function (arr, $form, options) {
                        var form = $(plugins.rdMailForm[this.extraData.counter]),
                            inputs = form.find("[data-constraints]"), output = $("#" + form.attr("data-form-output")),
                            captcha = form.find('.recaptcha'), captchaFlag = true;
                        output.removeClass("active error success");
                        if (isValidated(inputs, captcha)) {
                            if (captcha.length) {
                                var captchaToken = captcha.find('.g-recaptcha-response').val(), captchaMsg = {
                                    'CPT001': 'Please, setup you "site key" and "secret key" of reCaptcha',
                                    'CPT002': 'Something wrong with google reCaptcha'
                                };
                                formHasCaptcha = true;
                                $.ajax({
                                    method: "POST",
                                    url: "bat/reCaptcha.php",
                                    data: {'g-recaptcha-response': captchaToken},
                                    async: false
                                }).done(function (responceCode) {
                                    if (responceCode !== 'CPT000') {
                                        if (output.hasClass("snackbars")) {
                                            output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + captchaMsg[responceCode] + '</span></p>')
                                            setTimeout(function () {
                                                output.removeClass("active");
                                            }, 3500);
                                            captchaFlag = false;
                                        } else {
                                            output.html(captchaMsg[responceCode]);
                                        }
                                        output.addClass("active");
                                    }
                                });
                            }
                            if (!captchaFlag) {
                                return false;
                            }
                            form.addClass('form-in-process');
                            if (output.hasClass("snackbars")) {
                                output.html('<p><span class="icon text-middle fa fa-circle-o-notch fa-spin icon-xxs"></span><span>Sending</span></p>');
                                output.addClass("active");
                            }
                        } else {
                            return false;
                        }
                    },
                    error: function (result) {
                        var output = $("#" + $(plugins.rdMailForm[this.extraData.counter]).attr("data-form-output")),
                            form = $(plugins.rdMailForm[this.extraData.counter]);
                        output.text(msg[result]);
                        form.removeClass('form-in-process');
                        if (formHasCaptcha) {
                            grecaptcha.reset();
                        }
                    },
                    success: function (result) {
                        var form = $(plugins.rdMailForm[this.extraData.counter]),
                            output = $("#" + form.attr("data-form-output")), select = form.find('select');
                        form.addClass('success').removeClass('form-in-process');
                        if (formHasCaptcha) {
                            grecaptcha.reset();
                        }
                        result = result.length === 5 ? result : 'MF255';
                        output.text(msg[result]);
                        if (result === "MF000") {
                            if (output.hasClass("snackbars")) {
                                output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + msg[result] + '</span></p>');
                            } else {
                                output.addClass("active success");
                            }
                        } else {
                            if (output.hasClass("snackbars")) {
                                output.html(' <p class="snackbars-left"><span class="icon icon-xxs mdi mdi-alert-outline text-middle"></span><span>' + msg[result] + '</span></p>');
                            } else {
                                output.addClass("active error");
                            }
                        }
                        form.clearForm();
                        if (select.length) {
                            select.select2("val", "");
                        }
                        form.find('input, textarea').trigger('blur');
                        setTimeout(function () {
                            output.removeClass("active error success");
                            form.removeClass('success');
                        }, 3500);
                    }
                });
            }
        }
        // if (plugins.additionalFields.length) {
        //     var counter, i, j, k, fields;
        //     for (i = 0; i < plugins.additionalFields.length; i++) {
        //         counter = 0;
        //         var additionalFields = $(plugins.additionalFields[i]),
        //             markup = additionalFields.attr('data-additional-field').replace(/\$num\$/g, counter),
        //             init = additionalFields.attr('data-init-count');
        //         additionalFields.find('.additional-fields-add').on('click', function (e) {
        //             e.preventDefault();
        //             counter++;
        //             fields = $(this).parents('.additional-fields');
        //             fields.find('.additional-fields-wrap').append(markup);
        //             for (j = 0; j < fields.find('.additional-fields-wrap > *').length; j++) {
        //                 var field = fields.find('.additional-fields-wrap > *')[j];
        //                 if (field.className.indexOf('additional-field') == -1) {
        //                     $(field).wrap('<div class="additional-field"></div>')
        //                     attachFormValidator($(field).find('[data-constraints]'));
        //                 }
        //             }
        //         });
        //         for (j = 0; j < init; j++) {
        //             additionalFields.find('.additional-fields-wrap').append(markup);
        //             for (k = 0; k < additionalFields.find('.additional-fields-wrap > *').length; k++) {
        //                 var field = additionalFields.find('.additional-fields-wrap > *')[k];
        //                 if (field.className.indexOf('additional-field') == -1) {
        //                     $(field).wrap('<div class="additional-field"></div>')
        //                     attachFormValidator($(field).find('[data-constraints]'));
        //                 }
        //             }
        //         }
        //     }
        //     $document.delegate('.additional-field-remove', 'click', function (e) {
        //         e.preventDefault();
        //         $(this).parents('.additional-field').remove();
        //     });
        // }
        if (plugins.materialParallax.length) {
            if (!isNoviBuilder && !isIE && !isMobile) {
                plugins.materialParallax.parallax();
            } else {
                for (var i = 0; i < plugins.materialParallax.length; i++) {
                    var $parallax = $(plugins.materialParallax[i]);
                    $parallax.addClass('parallax-disabled');
                    $parallax.css({"background-image": 'url(' + $parallax.data("parallax-img") + ')'});
                }
            }
        }
        if (plugins.lightGallery.length) {
            for (var i = 0; i < plugins.lightGallery.length; i++) {
                initLightGallery(plugins.lightGallery[i]);
            }
        }
        if (plugins.lightGalleryItem.length) {
            var notCarouselItems = [];
            for (var z = 0; z < plugins.lightGalleryItem.length; z++) {
                if (!$(plugins.lightGalleryItem[z]).parents('.owl-carousel').length && !$(plugins.lightGalleryItem[z]).parents('.swiper-slider').length && !$(plugins.lightGalleryItem[z]).parents('.slick-slider').length) {
                    notCarouselItems.push(plugins.lightGalleryItem[z]);
                }
            }
            plugins.lightGalleryItem = notCarouselItems;
            for (var i = 0; i < plugins.lightGalleryItem.length; i++) {
                initLightGalleryItem(plugins.lightGalleryItem[i]);
            }
        }
        if (plugins.lightDynamicGalleryItem.length) {
            for (var i = 0; i < plugins.lightDynamicGalleryItem.length; i++) {
                initDynamicLightGallery(plugins.lightDynamicGalleryItem[i]);
            }
        }
});