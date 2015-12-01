$(window).load(function () { // makes sure the whole site is loaded
    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(50).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({ 'overflow': 'visible' });
});
$('document').ready(function () {
    var trigger = $('#hamburger'),
        menu = $('.menu-list'),
        isClosed = true;

    trigger.click(function () {
        burgerTime();
    });

    function burgerTime() {
        if (isClosed == true) {
            isClosed = false;
            trigger.removeClass('is-closed');
            trigger.addClass('is-open');
            menu.show();
            $('body').css('overflow', 'hidden');
        }
        else {
            isClosed = true;
            trigger.removeClass('is-open');
            trigger.addClass('is-closed');
            menu.hide();
            $('body').css('overflow', 'auto');
        }
    }
});
$('document').ready(function () {
    $('.sub-mobile').hide();
    $('.sup-mobile .a').click(function () {
        $('.sub-mobile').slideUp(300, 'swing');

        $(this).siblings('.sub-mobile').slideToggle(500, 'swing');
    })
});