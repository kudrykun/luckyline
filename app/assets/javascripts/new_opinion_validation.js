var nameFlag = false;
var textFlag = false;
var vkFlag = true;
var okFlag = true;
var picturesFlag = true;


$(document).ready(function() {
    $('#opinion_name').blur(function(){
        var reg = /^[а-яА-ЯЁё]{3,15}$/;
        var value = $('#opinion_name').val();
        if (!reg.test(value)) {
            $(".namespan").html('Имя должно состоять из 3-15 букв ');
            $("#opinion_name").addClass('field-incorrect');
            nameFlag = false;
        }else {
            $(".namespan").html('');
            $("#opinion_name").removeClass('field-incorrect');
            nameFlag = true;
        }
        changed();
    });
});
$(document).ready(function() {
    $('#opinion_text').blur(function(){
        var reg = /.{10,500}/;
        var value = $('#opinion_text').val();
        if (!reg.test(value)) {
            $(".textspan").html('Текст отзыва должен состоять из 10-500 символов ');
            $("#opinion_text").addClass('field-incorrect');
            textFlag = false;
        }else {
            $(".textspan").html('');
            $("#opinion_text").removeClass('field-incorrect');
            textFlag = true;
        }
        changed();
    });
});
$(document).ready(function() {
    $('#opinion_vk').blur(function(){
        var reg = /^((https:\/\/vk\.com\/id[\d]+)|(https:\/\/vk\.com\/[a-zA-Z\d_]+)|)$/;
        var value = $('#opinion_vk').val();
        if (!reg.test(value)) {
            $(".vkspan").html('Введите существующую ссылку ');
            $("#opinion_vk").addClass('field-incorrect');
            vkFlag = false;
        }else {
            $(".vkspan").html('');
            $("#opinion_vk").removeClass('field-incorrect');
            vkFlag = true;
        }
        changed();
    });
});
$(document).ready(function() {
    $('#opinion_ok').blur(function(){
        var reg = /^((https:\/\/ok\.ru\/profile\/[\d]+)|(https:\/\/ok\.ru\/[a-zA-z\d\.]{5,})|)$/;
        var value = $('#opinion_ok').val();
        if (!reg.test(value)) {
            $(".okspan").html('Введите существующую ссылку ');
            $("#opinion_ok").addClass('field-incorrect');
            okFlag = false;
        }else {
            $(".okspan").html('');
            $("#opinion_ok").removeClass('field-incorrect');
            okFlag = true;
        }
        changed();
    });
});
$(document).ready(function() {
    $('#images_').on('change',function(){
        if($(this)[0].files.length > 4){
            $(".picture_span").addClass('invalid-count');
            picturesFlag = false;
        }else {
            $(".picture_span").removeClass('invalid-count');
            picturesFlag = true;
        }
        changed();
    });
});

    var changed = function(){
        if(nameFlag && textFlag && vkFlag && okFlag && picturesFlag){
            $('#opinion-submit').attr("disabled", false);
        }else {
            $('#opinion-submit').attr("disabled", true);
        }
    };

