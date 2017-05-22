<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<c:import url="../module/left.jsp"/>
	<!-- top column -->	
	<c:import url="../module/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container row" style="min-height: 700px;">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">Dashboard <small>(${today})</small></h2>
					<hr>
					<!-- main start -->
					
					<!-- main end -->
				</div>
				
				<c:import url="../module/footer.jsp"/>
			</div>
		</div>
	</div>

	<!-- JS -->
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/jquery-1.11.2.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/bootstrap-filestyle.min.js"></script>
	<!-- Templatemo Script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/templatemo-script.js"></script>
	
</body>
</html>
					