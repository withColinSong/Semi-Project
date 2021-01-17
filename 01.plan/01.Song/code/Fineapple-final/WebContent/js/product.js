/**
 * 
 */

/* 수량에 따른 금액 지정 */
$(document).ready(function(){
    init();
}) 
var product_price;
var amount;

function init () {
    product_price = document.form.product_price.value;
    amount = document.form.amount.value;
    document.form.sum.value = product_price;
    change();
}

function add () {
    hm = document.form.amount;
    sum = document.form.sum;
    hm.value ++ ;

    sum.value = parseInt(hm.value) * product_price;
}

function del () {
    hm = document.form.amount;
    sum = document.form.sum;
        if (hm.value > 1) {
            hm.value -- ;
            sum.value = parseInt(hm.value) * product_price;
        }
}

function change () {
    hm = document.form.amount;
    sum = document.form.sum;

        if (hm.value < 0) {
            hm.value = 0;
        }
    sum.value = parseInt(hm.value) * product_price;
}


/* item-title 상단 고정*/
$(document).ready(function() {
var jbOffset = $('.menubar2').offset();
$(window).scroll(function() {
    if ($(document).scrollTop() > jbOffset.top) {
    $('.menubar2').addClass('jbFixed');
    }
    else {
    $('.menubar2').removeClass('jbFixed');
    }
});
} );

/* 유의사항 메뉴 선택시 해당 내용 등장*/
$(document).ready(function(){
    $('.note-btn1').click(function(){
        $('.배송정책').show(); //페이지를 로드할 때 표시할 요소
        $('.note-btn1').css('border-bottom', '3px solid #c0c5c7');
        $('.교환반품기간').hide(); //페이지를 로드할 때 숨길 요소
        $('.note-btn2').css('border-bottom', '');
        $('.교환반품불가사유').hide();
        $('.note-btn3').css('border-bottom', '');
    })
        $('.note-btn2').click(function(){
        $('.배송정책').hide();
        $('.note-btn1').css('border-bottom', '');
        $('.교환반품기간').show();
        $('.note-btn2').css('border-bottom', '3px solid #c0c5c7');
        $('.교환반품불가사유').hide();
        $('.note-btn3').css('border-bottom', '');
    })
    $('.note-btn3').click(function(){
        $('.배송정책').hide();
        $('.note-btn1').css('border-bottom', '');
        $('.교환반품기간').hide();
        $('.note-btn2').css('border-bottom', '');
        $('.교환반품불가사유').show();
        $('.note-btn3').css('border-bottom', '3px solid #c0c5c7');
    })
})
