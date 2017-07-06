function slickInitialize(selector) {
    $(selector).slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        centerMode: true,
        autoplay: false,
        autoplaySpeed: 4000,
        variableWidth: true
    })
}

function tabsInitialization(tabsWrapId) {
    $('#' + tabsWrapId + " .tabs-content>div:not(:first)").hide();

    slickInitialize($('#' + tabsWrapId + ' .tabs-content>*:first'));

    $('#' + tabsWrapId + " .tabs li").each(function (i) {
        $(this).attr('data-tab', 'tab_' + i)
    });
    $('#' + tabsWrapId + " .tabs-content>*").each(function (i) {
        $(this).attr('data-tab', 'tab_' + i)
    });

    $('#' + tabsWrapId + ' .tabs li').click(function (e) {
        if ($(this).hasClass('active')) return;

        $('#' + tabsWrapId + ' .tabs li').removeClass('active');
        $(this).addClass('active');

        $('#' + tabsWrapId + ' .tabs-content>*').hide();

        $('#' + tabsWrapId + ' .tabs-content>*').each(function () {
            if($(this).hasClass('slick-slider')) $(this).slick('unslick')
        });

        $('#' + tabsWrapId + ' .tabs-content>div[data-tab=' + $(this).data('tab') + ']').show();

        slickInitialize('#' + tabsWrapId + ' .tabs-content>div[data-tab=' + $(this).data('tab') + ']')
    });
}

$(document).ready(function () {

    tabsInitialization("popular_goods");
    tabsInitialization("laptop");
    tabsInitialization("desktop");
    tabsInitializationSingle("good-tabs");

    $('.main-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        dots: true
    });

    $('.good_btn').mouseenter(function () {
        if($(this).hasClass('active')) return;
        $(this).closest('.good_buttons_wr').find('.good_btn').removeClass('active');
        $(this).addClass('active');
    });
    $('.good_buttons_wr').mouseleave(function () {
        $(this).find('.good_btn').removeClass('active');
        $(this).find('.card_btn').addClass('active');
    });
    $('.brand-logos .logo').mouseenter(function () {
        $(this).addClass('tada');
    });
    $('.brand-logos .logo').mouseleave(function () {
        $(this).removeClass('tada');
    });

    $('.small-img-sl').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        dots: false,
        variableWidth: true,
        infinite: false
    });

    $('.big-img-sl img').attr('src', $('.small-img-sl .img-wr.active').find('img').attr('src'));
    $('.small-img-sl .img-wr').click(function () {
        if($(this).hasClass('active'));
        $('.small-img-sl .img-wr').removeClass('active');
        $(this).addClass('active');
        $('.big-img-sl img').hide();
        $('.big-img-sl img').attr('src', $(this).find('img').attr('src'));
        $('.big-img-sl img').fadeIn(100);
    });
    $('.share-icon').mouseenter(function () {
        $(this).addClass('animated').addClass('rubberBand')
    });
    $('.share-icon').mouseleave(function () {
        $(this).removeClass('animated').removeClass('rubberBand')
    });
    $('.basket, .note').click(function () {
        $(this).closest('.basket-wr-item').toggleClass('active');
    });

    $('.checkout-item-body:not(:first)').hide();
    $('.continue').click(function () {
        $('.checkout-item-body').slideUp();
        $(this).closest('.checkout-item').next().find('.checkout-item-body').slideDown();
    });
    $('.previous').click(function () {
        $('.checkout-item-body').slideUp();
        $(this).closest('.checkout-item').prev().find('.checkout-item-body').slideDown();
    });
});

