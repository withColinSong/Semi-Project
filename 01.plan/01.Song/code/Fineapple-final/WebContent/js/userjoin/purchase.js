/**
 * 
 */



function apply() {
	var frm = document.frm_member;
	
 	// cupon_select 클래스 가져오기
 	let cupon_select = document.querySelector('.cupon_select');
	
	// select 값 넘어옴
	let text = cupon_select.options[cupon_select.selectedIndex].text;
	
	
	let coupon = document.getElementById('pay_coupon'); 
	
	coupon.value = text;
	

	
}
