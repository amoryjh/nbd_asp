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
    $('.sup-mobile').click(function () {
        $('.sub-mobile').slideUp(300, 'swing');
        $('.sup-mobile').removeClass('k');

        $(this).addClass('k');
        $(this).children('.sub-mobile').slideToggle(500, 'swing');
    })
});