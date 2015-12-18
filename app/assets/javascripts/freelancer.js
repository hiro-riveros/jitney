/*!
 * Start Bootstrap - Freelancer Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('body').on('click', '.page-scroll a', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Floating label headings for the contact form
$(function() {
    $("body").on("input propertychange", ".floating-label-form-group", function(e) {
        $(this).toggleClass("floating-label-form-group-with-value", !! $(e.target).val());
    }).on("focus", ".floating-label-form-group", function() {
        $(this).addClass("floating-label-form-group-with-focus");
    }).on("blur", ".floating-label-form-group", function() {
        $(this).removeClass("floating-label-form-group-with-focus");
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

$(document).ready(function(){
    $('#btn-signup').on('click', function(){
        sendCreate();
    });

    function sendCreate(){
        //var url = 'https://jitneyinroute.herokuapp.com/api/users';
        //var url2 = 'https://jitneyinroute.herokuapp.com/api/sessions';
        var url = 'http://localhost:3000//api/users';
        var url2 = 'http://localhost:3000/api/sessions';
        //var url2 = 'http://localhost:3000/users/sign_in';
        var data = {
            email: $('.register_user_email').val(),
            password: $('.register_user_password').val(),
            password_confirmation: $('.register_user_password_confirmation').val()
        };
        debugger;
        $.ajax({
            type: 'POST',
            url: url,
            data: data,
            success: function(success){
                //alert('usuario creado correctamente');
                //window.location.reload();
                debugger;
                $.ajax({
                    type: 'POST',
                    url: url2,
                    data: {
                        email: data.email,
                        password: data.password
                    },
                    success: function(success){
                        debugger;
                        alert('autenticado correctamente');
                        window.location.reload();
                        //window.location.href('https://jitneyinroute.herokuapp.com/users');
                    },
                    error: function(error){
                        debugger;
                        alert('error al intentar iniciar sesión automáticamente, porfavor intentelo manualmente');
                    }
                });
            },
            error: function(error){
                alert('error al intentar crear el usuario');
            }
        });
    }

});
