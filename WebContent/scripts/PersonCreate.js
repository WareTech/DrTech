function doSubmit()
{
	console.log("doSubmit():" + $("#PersonCreateForm").serialize());
	$.post( 
		"PersonCreateService.jsp", 
		$("#PersonCreateForm").serialize()
		)
		.done(function( data ) {
			alert("Done!");
			document.location = "PersonCreatePage.jsp";
		});	
}