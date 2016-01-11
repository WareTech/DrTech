<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/mobile.css">
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	</head>
	<body>
	
		<div data-role="page" id="login">
			<div data-role="panel" id="menu" data-display="overlay"> 
				<ul data-role="listview">
					<li data-role="list-divider">Europe</li>
					<li><a href="#" data-rel="close"class="ui-btn ui-icon-home ui-btn-icon-right">Home</a></li>
					<li><a href="#" data-rel="close"class="ui-btn ui-icon-search ui-btn-icon-right">Search</a></li>
					<li data-role="list-divider">America</li>
					<li><a href="#">Action #1</a></li>
					<li><a href="#user-image"><img src="media/cyv.jpeg" alt="C&V" class="ui-li-icon">Caty & Valen</a></li>
					<li><a href="#" data-rel="close"class="ui-btn ui-icon-grid ui-btn-icon-right">Options</a></li>
					<li><a href="#login" data-rel="close"class="ui-btn ui-icon-delete ui-btn-icon-right">Close</a></li>
				</ul>
			</div> 

			<div data-role="header" data-position="fixed">
			  <a href="#menu" class="ui-btn ui-icon-grid ui-btn-icon-left ui-corner-all pop">Menu</a>
			  <h1>Welcome To Dr.Tech</h1>
			</div>

			<div data-role="controlgroup" data-type="horizontal" class="menu">
				<a href="#" class="ui-btn ui-icon-home ui-btn-icon-left">Home</a>
				<a href="#options-page" class="ui-btn ui-icon-grid ui-btn-icon-left pop">Options</a>
				<a href="#user-edit" class="ui-btn ui-icon-search ui-btn-icon-left">Search</a>
			</div>

   			<div data-role="main" class="ui-content">
				<form method="post" action="_Login.jsp">
					<label for="fname">Write your name and click on one of the buttons:</label>
					<input type="text" name="username" id="username" placeholder="Username">
					<input type="password" name="password" id="password" placeholder="Password">
					<a class="ui-btn ui-corner-all ui-shadow" href="#error-page" data-transition="pop">Error</a>
					<a class="ui-btn ui-corner-all ui-shadow" href="#error-popup" data-rel="popup" data-transition="slidedown" data-position-to="window">Login</a>
				</form>
			</div>

			<div data-role="popup" id="error-popup" class="ui-content" data-overlay-theme="b">
				<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
				<p>Error!</p>
			</div>
			
			<div data-role="footer" data-position="fixed">
				<h1>Footer Text</h1>
			</div>
		</div>	

		<div data-role="page" id="user-edit">
			<div data-role="header" data-position="fixed">
			  <h1>Welcome To Dr.Tech</h1>
			</div>

			<div data-role="controlgroup" data-type="horizontal" class="menu">
				<a href="#" class="ui-btn ui-icon-home ui-btn-icon-left">Home</a>
				<a href="#options-page" class="ui-btn ui-icon-grid ui-btn-icon-left pop">Options</a>
				<a href="#user-image" class="ui-btn ui-icon-search ui-btn-icon-left" data-rel="popup">Search</a>
			</div>

   			<div data-role="main" class="ui-content">
				<form method="post" action="_Login.jsp">
					<input type="text" name="firstname" id="firstname" placeholder="Firstname">
					<input type="text" name="lastname" id="lastname" placeholder="Lastname">
				</form>
			</div>

		    <div data-role="popup" id="user-image" data-overlay-theme="b">
				<a href="#login" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
				<img src="media/cyv.jpeg" alt="Caty & Valen">
		    </div>

			<div data-role="footer" data-position="fixed">
				<h1>Footer Text</h1>
			</div>
   		</div>	

		<div data-role="page" data-dialog="true" id="options-page">
			<div data-role="controlgroup" data-type="vertical">
				<a href="#" class="ui-btn ui-icon-home ui-btn-icon-left">Home</a>
				<a href="#" class="ui-btn ui-icon-grid ui-btn-icon-left">Options</a>
				<a href="#" class="ui-btn ui-icon-search ui-btn-icon-left">Search</a>
				<a href="#login" class="ui-btn ui-icon-delete ui-btn-icon-left">Close</a>
			</div>
		</div>

		<div data-role="page" data-dialog="true" id="error-page">
			<div data-role="main" class="ui-content">
				<a href="#login">Error</a>
			</div>
		</div>

	</body>
</html>
