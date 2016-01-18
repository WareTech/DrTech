$(document).ready(function() {
    $("#login_button").click(function() {
        $.post(
    		"service/Authenticate.jsp", 
    		$("#login_form").serialize(),
	        function(data, status) {
	            var response = $.parseJSON(data);
    			if (response.status == 1) {
    				document.location = "Home.jsp";
    			}
	        });
    });
});