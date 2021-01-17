/**
 * product list 를 ajax로
 */
var laptop = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=노트북",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var phone = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'get',
		url: "../productList.do?desc=휴대폰",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
/*			alert("okokokokokokokok");
			var a = "1234";*/
			
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var tablet = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=태블릿PC",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};

var watch = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=스마트워치",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};


var accessory = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../product_index/accessory.jsp",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};

//pricelist
var pricelist = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'get',
		url: "../Pricelist",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});

};
var pricelistdesc = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'get',
		url: "../PricelistDesc",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};


var recentlist = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'get',
		url: "../Recentlist",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};




/*-------------- site map 용 --------------- */
var laptopSite = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=노트북",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			$('html').scrollTop(0);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var phoneSite = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'get',
		url: "../productList.do?desc=휴대폰",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			$('html').scrollTop(0);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var tabletSite = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=태블릿PC",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			$('html').scrollTop(0);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};

var watchSite = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../productList.do?desc=스마트워치",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			$('html').scrollTop(0);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};


var accessorySite = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "../product_index/accessory.jsp",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
			$('html').scrollTop(0);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};


