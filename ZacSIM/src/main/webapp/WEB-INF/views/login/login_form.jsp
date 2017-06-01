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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$( function() {
	  $( "#tabs" ).tabs();
	});
</script>
<style>
	.branchOwner-bt1{
		margin-top: 150px;
		margin-left: 610px;
	}
	
	.branchOwner-bt2{
		
		margin-top: -18px;
		margin-left: 735px;
	}
	
	.minusMargin{
		margin-top: -5px;
	}
	
	.button-color{
		background-color: green;
		
	}
</style>
</head>
<body class="light-gray-bg">
	<div id="tabs" class="row">
	  <ul>
		  
	    <li class="branchOwner-bt1"><a class="templatemo-blue-button" href="#tabs-1">Owner</a></li>
	    <li class="branchOwner-bt2"><a class="templatemo-blue-button" href="#tabs-2">Staff</a></li>
		 
	  </ul>
	   <div id="tabs-1" class="minusMargin">
	    <div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
				<h1 style="margin-bottom: 10px;">Zak<b>SIM</b></h1><br>
				<h1>BranchOwner</h1>
			</header>
			<form id="owner-form" class="templatemo-login-form row" action="${pageContext.request.contextPath}/login/loginpro" method="POST">
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
					<input id="submit-bt" type="button" class="templatemo-blue-button width-100 button-color" value="Login">
				</div>
			</form>
		</div>
		<div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>
				Not a registered user yet? <strong><a href="#"
					class="blue-text">Sign up now!</a></strong>
			</p>
		</div>
      </div>	
	  <div id="tabs-2" class="minusMargin">
	    <div class="templatemo-content-widget templatemo-login-widget white-bg" style="padding-bottom: 20px;">
			<header class="text-center">
				<h1 style="margin-bottom: 10px;">Zak<b>SIM</b></h1><br>
				<h1>BranchStaff</h1>
			</header>
			<form id="owner-form" class="templatemo-login-form row" action="${pageContext.request.contextPath}/login/loginpro" method="POST">
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
					<input id="submit-bt" type="button" class="templatemo-blue-button width-100 button-color" value="Login">
				</div>
			</form>
		</div>
		<div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>
				Not a registered user yet? <strong><a href="#"
					class="blue-text">Sign up now!</a></strong>
			</p>
		</div>	    
	  </div>
	  
	</div>
	
	<%-- <!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/jquery-1.11.2.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		console.log($('#r1').val());
		if($('#r1').val()=='owner'){
			console.log('확인1');
			$('#submit-bt').click(function(){
				console.log('클릭');
				var id = $('#branch_owner_id').val();
				var pw = $('#branch_owner_pw').val();
				$('#staff_id').val(id);
				$('#staff_pw').val(pw);
				$('#owner-form').submit();
			});
		}else{
			
		}
	});
	</script> --%>
</body>
</html>
