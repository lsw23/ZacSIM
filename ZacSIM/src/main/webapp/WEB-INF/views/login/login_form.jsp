<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>ZakSIM</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="templatemo">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/resources/head/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/templatemo-style.css" rel="stylesheet">
</head>
<body class="light-gray-bg">
	<h2 style="color:white;"><a href="${pageContext.request.contextPath}/index/index">메인 페이지</a></h2>
	<div class="templatemo-content-widget templatemo-login-widget white-bg"
	style="margin-top: 150px;">
		<header class="text-center">
			<h1>Zak<b>SIM</b>(지점)</h1>
		</header>
		<form class="templatemo-login-form" action="${pageContext.request.contextPath}/login/loginpro" method="POST">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-user fa-fw"></i>
					</div>
					<input type="text" class="form-control" id="username" name="branch_owner_id"  value="bid001" required="required"/>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-key fa-fw"></i>
					</div>
					<input type="password" class="form-control" id="password" name="branch_owner_pw"  value="bpw001" required="required"/>
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
	
	
	<%-- 	<meta charset="UTF-8">
	<title>ZakSIM</title>
		<link rel= "stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
		<style>
			#logo{
				color : white;
			}
			body{
				background : bluesky;
			}
			
			#formMargin{
				margin-top: 150px;
			}
		</style>
	</head>
	<body>
	<!-- Form-->
	<h1 id="logo">ZakSIM 지점사이트</h1>
	<h2 id="logo"><a href="${pageContext.request.contextPath}/head">본사 사이트</a></h2>
	<div class="form formMargin">
	  <div class="form-panel one">
	    <div class="form-content">
	      <form action="${pageContext.request.contextPath}/login/loginpro" method="post">
	        <div class="form-group">
	          <label for="username">아이디</label	          <input type="text" id="username" name="branch_owner_id" value="bid001" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="password">비밀번호</label>
	          <input type="password" id="password" name="branch_owner_pw"  value="bpw001" required="required"/>
	        </div>
	        <div class="form-group">
	          <label class="form-remember">
	            <input type="checkbox"/>Remember Me
	          </label><a href="#" class="form-recovery">비밀번호찾기</a>
	        </div>
	        <div class="form-group">
	          <button type="submit">로그인</button>
	        </div>
	      </form>
	    </div>
	  </div>
	</div>
	 --%>
	
	
	

