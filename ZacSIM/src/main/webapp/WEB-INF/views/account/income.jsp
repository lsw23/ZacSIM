<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>ZacSIM Dashboard</title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <!-- Bootstrap 3.3.2 -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <!-- Font Awesome Icons -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <!-- Ionicons -->
  <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
  <!-- Theme style -->
  <link href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
  <!-- DATA TABLES -->
  <link href="${pageContext.request.contextPath}/resources/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
  
  <style type="text/css">
	  .btnPadding{
	  padding-left: 12px;
	  padding-right: 12px;
	  }
  </style>
</head>
<body class="skin-blue">
    <div class="wrapper">
      <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
      
	  <!-- -----------------------내용 바로 위----------------------------- -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1> 수입
            <small>(${today})</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">회계</li>
            <li class="active">수입</li>
          </ol>
        </section>

		<!-- ------------------------내용!!!------------------------------ -->
        <section class="content">
 	  		<div class="row">
				<div class="col-md-12">
					<div class="box box-danger">
						<div class="box-header">
							<h3 class="box-title"><b>월별 수입 목록</b></h3>
						</div><!-- /.box-header -->
						<form action="${pageContext.request.contextPath}/" method="post">
							<div class="box-body">
								<div class="form-group">
									<b>기간 선택:</b>
									&nbsp;&nbsp;
									<input name="startDate" type="date" style="width: 150px; height: 25px;">
									&nbsp;~&nbsp;
									<input name="endDate" type="date" style="width: 150px; height: 25px;">
									<input class="btnPadding" type="submit" value="검색"/>
								</div>
							</div><!-- /.box-body -->
						</form>
					</div><!-- /.box -->
             	</div><!-- /.col -->
             	<div class="col-md-12">
					<div class="box box-default">
						<div class="box-body">
							 <table id="example2" class="table table-bordered table-striped">
			                    <thead>
			                      <tr>
				                      <th>열람실</th>
				                      <th>열람석</th>
				                      <th>이름</th>
				                      <th>성별</th>
				                      <th>입실 시간</th>
				                      <th>호출 메세지</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    <c:forEach var="m" items="${useMemberList}">
				                    <tr>
				                      <td>201호</td>
				                      <td>${m.seat_cd}</td>
				                      <td>${m.member_nm}</td>
				                      <td>${m.member_sex}</td>
				                      <td>11-7-2014</td>
				                      <td><a href="#"><span class="label label-warning">Calling</span></a></td>
				                    </tr>
			                    </c:forEach>
			                    </tbody>
			                 </table>
						</div><!-- /.box-body -->
					</div><!-- /.box -->
             	</div><!-- /.col -->
 	  		</div>
        </section><!-- /.content -->

      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='${pageContext.request.contextPath}/resources/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/demo.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="${pageContext.request.contextPath}/resources/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<!-- DATA TABES SCRIPT -->
    <script src="${pageContext.request.contextPath}/resources/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    
    <script type="text/javascript">
      $(function () {
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": true, // jquery.dataTables.js 파일 내에 aLengthMenu로 find
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": true
        });
      });
    </script>
</body>
</html>