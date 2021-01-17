/**
 * SweetAlert 가이드 페이지 
 * https://sweetalert.js.org/guides/
 */


function funcCart(){
	var frm = document.form;
	frm.action = "../mypage/cart.jsp";
	frm.submit();
}

function funcPO(){
	var frm = document.form;
	frm.action = "../product/prodlogin.jsp";
	frm.submit();
}
$().ready(function () {
   $("#delete-all-cart-btn").click(function () {
   var frm = document.form;
   frm.action = '../mypage/deleteAllCart.jsp';
   frm.submit();
   
      Swal.fire({
         title: '삭제되었습니다.',
         icon: 'success',
         showCancelButton: true, 
         confirmButtonColor: '#000',
         cancelButtonColor: '#000', 
         confirmButtonText: '삭제하기', 
         cancelButtonText: '취소하기'
      }).then((result) => {
          if (result.isConfirmed) {
            frm.target = 'none';
            frm.action = "../mypage/cart.jsp";
            frm.submit();
         }else if(result.isCanceled){
            Swal.fire(history.go(-1))
         }
      })
   });
});

$().ready(function () {
   $("#delivery-location-btn").click(function () {
   var frm = document.form;
   frm.action = '../mypage/deletecart.jsp';
   frm.submit();
   
      Swal.fire({
         title: '삭제되었습니다.',
         icon: 'success',
         showCancelButton: true, 
         confirmButtonColor: '#000',
         cancelButtonColor: '#000', 
         confirmButtonText: '삭제하기', 
         cancelButtonText: '취소하기'
      }).then((result) => {
          if (result.isConfirmed) {
            frm.target = 'none';
            frm.action = "../mypage/cart.jsp";
            frm.submit();
         }else if(result.isCanceled){
            Swal.fire(history.go(-1))
         }
      })
   });
});

$().ready(function () {
   $(".btn1").click(function () {
   var frm = document.form;
   frm.action = '../mypage/addcart.jsp';
   frm.submit();
   
      Swal.fire({
         title: '장바구니에 추가되었습니다.',
         icon: 'success',
         showCancelButton: true, 
         confirmButtonColor: '#000',
         cancelButtonColor: '#000', 
         confirmButtonText: '장바구니 가기', 
         cancelButtonText: '쇼핑 계속하기'
      }).then((result) => {
          if (result.isConfirmed) {
            frm.target = 'none';
            frm.action = "../mypage/cart.jsp";
            frm.submit();
         }else if(result.isCanceled){
            Swal.fire(history.go(-1))
         }
      })
   });
});
$().ready(function () {
   $(".btn2").click(function () {
	funcPO();
	})
})

/* 수정해보장
function funcCart(){
	var frm = document.form;
	frm.action = "../mypage/cart.jsp";
	frm.submit();
}

$().ready(function () {
   $(".btn1").click(function () {
      Swal.fire({
         title: '장바구니에 추가되었습니다.',
         icon: 'success',
         showCancelButton: true, 
         confirmButtonColor: '#000',
         cancelButtonColor: '#000', 
         confirmButtonText: '장바구니 가기', 
         cancelButtonText: '쇼핑 계속하기'
      }).then((result) => {
          if (result.isConfirmed) {
             funcCart();
               
         }else if(result.isCanceled){
            Swal.fire(history.go(-1))
         }
      })
   });
});
*/ 


/*
$().ready(function () {
   $(".btn1").click(function () {
      Swal({
         title: '장바구니에 추가되었습니다.',
         icon: 'success',

		buttons : {
			cancle: {
				text : '쇼핑 계속하기',
				value : false,
			},
			confirm : {
				text : '로그인 창으로',
				value : true,
			}
		}
		}).then((result) =>{
			if(result){
				swal(document.location.href = "../mypage/cart.jsp")
			}else{
				 Swal(history.go(-1))
			}
		})
      })
   });
*/