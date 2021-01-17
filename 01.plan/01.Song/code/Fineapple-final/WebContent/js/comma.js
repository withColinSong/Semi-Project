/**
 * 
 */
$().ready(function () {
var comma = document.getElementById('moneyComma');
comma.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
})