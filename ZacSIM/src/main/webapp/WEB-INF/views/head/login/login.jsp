<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ZakSIM</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="templatemo">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/resources/head/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/templatemo-style.css" rel="stylesheet">

</head>
<body class="light-gray-bg">
	<h2 style="color:white;"><a href="${pageContext.request.contextPath}/login/loginFrom">전주점 사이트</a></h2>
	<div class="templatemo-content-widget templatemo-login-widget white-bg"
	style="margin-top: 150px;">
		<header class="text-center">
			<h1>Zak<b>SIM</b></h1>
		</header>
		<form class="templatemo-login-form" action="${pageContext.request.contextPath}/head/login/login_pro" method="POST">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-user fa-fw"></i>
					</div>
					<input type="text" class="form-control"
						id="head_id" name="head_id" type="text" value="id01">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-key fa-fw"></i>
					</div>
					<input type="password" class="form-control" 
						id="head_pw" name="head_pw" type="password" value="pw01">
				</div>
			</div>
			<div class="form-group">
				<div class="checkbox squaredTwo">
					<input type="checkbox" id="c1" name="cc" /> <label for="c1"><span></span>Remember me</label>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="templatemo-blue-button width-100">Login</button>
			</div>
		</form>
	</div>
	<div
		class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
		<p>
			Not a registered user yet? <strong><a href="#"
				class="blue-text">Sign up now!</a></strong>
		</p>
	</div>
</body>
</html>