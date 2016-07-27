<%
session.invalidate();
%>

<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/mobile.css">
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
		<script src="scripts/Logout.js"></script>
	</head>
	<body>
		<div data-role="header" data-position="fixed">
			<h1>Dr. Tech</h1>
		</div>
		<div data-role="main" class="ui-content">
		</div>
		<div data-role="footer" data-position="fixed">
			<h1>Login Out...</h1>
		</div>
	</body>
</html>
