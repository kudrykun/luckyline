$(document).ready(function() {
    $('a.page-scroll').bind('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });
});

$(document).ready(function() {
    $('.modal-image').click(function(){
        $('.modal-body').empty();
        $($(this).find('.pic-container').html()).appendTo('.modal-body');
        $('#myModal').modal({show:true});
    });
});