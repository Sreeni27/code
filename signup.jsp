<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" "bootstrap/jquery-3.1.1.min.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.myd {
	background-color: cyan;
}



.carousel .item {
	height: 550px;
	background-color: #555;
}

.carousel img {
	position: absolute;
	top: 0;
	left: 0;
	min-height: 400px;
}
</style>
</head>
<body>


	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> E-KART></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Home<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">page -1</a></li>
					<li><a href="#">Page-2</a></li>
					<li><a href="#">Page-3</a></li>
				</ul>
				</li>
				<li><a href="#"> Page 2</a></li>
				<li><a href="#"> Page 3</a></li>
				</ul>
				<ul class=" nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon-user"></span>Sign up</a></li>				
				<li><a href="#"><span class="glyphicon-log-in"></span>Log in</a></li>				
				</ul>
		</div>
	</nav>
	<centre>
	<div class="container-fluid">
	<h2> Sign up :)</h2>
	<form action="Login" method="post">
	<div class="form-group">
	<label for="username">Username:</label>
	<input type="text" name="uname" placeholder="create ur username">
	</div>
	<div class="form-group">
	<label for="password">Password:</label>
	<input type="password" name="passwd" placeholder="create ur password">
	</div>
	<div class="checkbox">
	<label><input type="checkbox">Remember me</label>
		</div>
	<button type="submit" class=btn btn-default">Submit</button>
	</centre>
	
	</form>
	
	</div>
	
	</body>
	</html>
	