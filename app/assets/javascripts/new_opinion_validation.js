$(document).ready(function() {
    $('#opinion_name').blur(function(){
        var reg = /^[а-яА-ЯЁё]{3,15}$/;
        var value = $('#opinion_name').val();
        if (!reg.test(value)) {

            $(".namespan").html('Имя должно состоять из 3-15 букв ');
            $("#opinion_name").addClass('field-incorrect');
        }else {
            $(".namespan").html('');
            $("#opinion_name").removeClass('field-incorrect');
        }
    });
});
$(document).ready(function() {
    $('#opinion_text').blur(function(){
        var reg = /.{10,500}/;
        var value = $('#opinion_text').val();
        if (!reg.test(value)) {

            $(".textspan").html('Текст отзыва должен состоять из 10-500 символов ');
            $("#opinion_text").addClass('field-incorrect');
        }else {
            $(".textspan").html('');
            $("#opinion_text").removeClass('field-incorrect');
        }
    });
});
$(document).ready(function() {
    $('#opinion_vk').blur(function(){
        var reg = /^((https:\/\/vk\.com\/id[\d]+)|(https:\/\/vk\.com\/[a-zA-Z\d_]+)|)$/;
        var value = $('#opinion_vk').val();
        if (!reg.test(value)) {

            $(".vkspan").html('Введите существующую ссылку ');
            $("#opinion_vk").addClass('field-incorrect');
        }else {
            $(".vkspan").html('');
            $("#opinion_vk").removeClass('field-incorrect');
        }
    });
});
$(document).ready(function() {
    $('#opinion_ok').blur(function(){
        var reg = /^((https:\/\/ok\.ru\/profile\/[\d]+)|(https:\/\/ok\.ru\/[a-zA-z\d\.]{5,})|)$/;
        var value = $('#opinion_ok').val();
        if (!reg.test(value)) {

            $(".okspan").html('Введите существующую ссылку ');
            $("#opinion_ok").addClass('field-incorrect');
        }else {
            $(".okspan").html('');
            $("#opinion_ok").removeClass('field-incorrect');
        }
    });
});