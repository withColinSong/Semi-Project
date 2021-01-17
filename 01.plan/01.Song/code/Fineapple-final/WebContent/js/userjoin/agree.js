/**
 * 
 */
 
var modal = function() {

 	document.getElementById("agree-id").onclick = function() {
        document.getElementById("modal").style.display="block";
		
    }
    

 	document.getElementById("agree-service").onclick = function() {
        document.getElementById("modal").style.display="block";
    }    

	document.getElementById("agree-locate").onclick = function() {
        document.getElementById("modal").style.display="block";
    }    

	document.getElementById("agree-adv").onclick = function() {
        document.getElementById("modal").style.display="block";
    }    

     document.getElementById("modal_close_btn").onclick = function() {
        document.getElementById("modal").style.display="none";
    }
 
}



  