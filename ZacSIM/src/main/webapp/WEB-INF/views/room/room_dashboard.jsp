<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
    <title>AdminLTE 2 | Data Tables</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="${pageContext.request.contextPath}/resources/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
    <div class="wrapper">
 	  <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
		
	  <!-- 수정부분  -->
      <div class="content-wrapper">
		  <section class="content-header">
		    <h1>
		       	열람실
		      <small>현황</small>
		    </h1>
		    <ol class="breadcrumb">
		      <li><a href="${pageContext.request.contextPath}/dashboard/today_status"><i class="fa fa-table"></i>Home</a></li>
		      <li class="active">열람실 관리</li>
		    </ol>
		  </section>
			
	<!-- Main content -->
        <section class="content">
		<div class="row">
        <div class="col-xs-12">
		<div class="box">
                <div class="box-header">
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <tr>
		            	<th>열람실</th>
		           	    <th>입실</th>
		                <th>퇴실</th>
		                <th>만료예정</th>
		                <th>총원</th>
		                <th>결제 열람석 수</th>
		                <th>미결제 열람석 수</th>
            		  </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="rd" items="${roomdashlist}">
                    	  <tr>
	                        <td>${rd.room_nm}</td>
	                        <td>${rd.seat_in}</td>
	                        <td>${rd.seat_out}</td>
	                        <td>${rd.room_out}</td>
	                        <td>${rd.room_personnel}</td>
	                        <td>${rd.pay_seat}</td>
	                        <td>${rd.notpay_seat}</td>
	                      </tr> 
                       </c:forEach>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			</div>
			
			<div class="col-md-12">
              <div class="box">
                <div class="box-header">
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>열람실</th>
                      <th>결제률</th>
                      <th style="width: 40px">Label</th>
                    </tr>
                    <c:forEach var="p" items="${paylist}">
	                    <tr>
	                      <td>${p.paynumber}</td>
	                      <td>${p.room_nm}</td>
	                      <td>
	                        <div class="progress progress-xs">
	                          <div class="progress-bar progress-bar-yellow" style="width: ${p.payment_percentage}%"></div>
	                        </div>
	                      </td>
	                      <td><span class="badge bg-yellow">${p.payment_percentage}%</span></td>
	                    </tr>
                    </c:forEach>
                  </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box -->
            </div><!-- /.col -->
					</div><!-- row -->
			</section>
	 	</div><!-- content-wrapper -->
	</div><!-- wrapper -->

	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
	<script>
		//메뉴 고정
			console.log('하이');
			$('#room_menu').addClass('active');
			$('#room03').addClass('active');
	</script>
</body>
</html>