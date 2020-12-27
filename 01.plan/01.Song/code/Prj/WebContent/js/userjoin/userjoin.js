/**
 * 
 */
function getID(id){ return document.getElementById(id)}


var member = function() {
	
var btnFindZip = getID('btnFindZip');
var idCheck = getID('id-Check');

// 다음 우편번호 검색 API를 사용한 주소 찾기
	if(btnFindZip != null) {
		btnFindZip.onclick = function() {
			var frm = document.getElementById("frm-member");
			new daum.Postcode({
				oncomplete:function(data) {
					frm.zipcode.value = data.zonecode;
					frm.address.value = data.address;

				}
			}).open();
		}
	
	}
	
	if(idCheck != null) {
			idCheck.onclick = function() {
			window.open("idCheckForm.jsp", "idwin", "width=400, height=350");

		}
	}
}

