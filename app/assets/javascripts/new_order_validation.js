$(document).ready(function() {
    $('#order_name').blur(function(){
        var reg = /^[а-яА-ЯЁё]{2,15}$/;
        var value = $('#order_name').val();
        if (!reg.test(value)) {

            $(".namespan").html('Имя должно состоять из 2-15 букв ');
            $("#order_name").addClass('field-incorrect');
        }else {
            $(".namespan").html('');
            $("#order_name").removeClass('field-incorrect');
        }
    });
});
$(document).ready(function() {
    $('#order_phone').blur(function(){
        var reg = /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/;
        var value = $('#order_phone').val();
        if (!reg.test(value)) {

            $(".phonespan").html('Введите существующий номер телефона');
            $("#order_phone").addClass('field-incorrect');
        }else {
            $(".phonespan").html('');
            $("#order_phone").removeClass('field-incorrect');
        }
    });
});