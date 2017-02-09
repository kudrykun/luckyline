$(document).ready(function() {
    $('a.page-scroll').bind('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });
});
/*
jQuery(document).ready(function(){
    jQuery("a.page-scroll").on("click", function (event) {
        event.preventDefault();

        var id  = jQuery(this).attr('href'),

            top = jQuery(id).offset().top;

        jQuery('body').animate({scrollTop: top}, 500);
    });
});
*/
