<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <c:import url="../module2/head.jsp"/>
  <style type="text/css">
  
  .btnPadding{
  padding-top: 5px;
  padding-bottom: 2px;
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
					<div class="box box-default">
						<div class="box-header">
							<h3 class="box-title"><b>월별 수입 목록</b></h3>
						</div><!-- /.box-header -->
						<form action="${pageContext.request.contextPath}/" method="post">
							<div class="box-body">
								<div class="form-group">
									<b>기간 선택:</b>
									&nbsp;&nbsp;
									<input name="start" type="date" style="width: 150px; height: 25px;">
									&nbsp;~&nbsp;
									<input name="end" type="date" style="width: 150px; height: 25px;">
									<input class="btn btn-default btnPadding" style="height: 25px;" type="submit" value="검색"/>
								</div>
							</div><!-- /.box-body -->
						</form>
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

    <!-- script -->
    <c:import url="../module2/jsscript.jsp"/>	  
</body>
</html>