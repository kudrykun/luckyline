/**
 * Created by kudry on 06.07.17.
 */
$(document).ready(function() {
$('ul.nav li.dropdown').hover(function() {
    $(this).addClass('open');
    $(this).find('.dropdown-toggle').attr('area-expanded','true');
}, function() {
    $(this).removeClass('open');
    $(this).find('.dropdown-toggle').attr('area-expanded','false');
});
});
