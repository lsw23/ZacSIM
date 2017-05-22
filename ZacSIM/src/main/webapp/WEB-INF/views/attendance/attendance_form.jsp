<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
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
		       	출결번호
		      <small>.</small>
		    </h1>
		    <ol class="breadcrumb">
		      <li><a href="${pageContext.request.contextPath}/dashboard/today_status"><i class="fa fa-bell-o"></i>Home</a></li>
		      
		    </ol>
		  </section>
			
	<!-- Main content -->
        <section class="content">
			<div class="row">
				<div class="col-md-12">
	              <!-- Danger box -->
	              <div class="box box-solid bg-blue">
	                <div class="box-header">
	                  <h3 class="box-title">출결번호창</h3>
	                </div>
	                <div class="box-body">
	                  	출결번호 입력창: <button class="btn bg-orange btn-flat margin" id="input_btn">클릭해주세요.</button>
	                  <p>
	             		출결번호를 외부기기 점검 혹은 고장시 위 버튼을 클릭시 출결번호를 입력할 수 있는 창이 생성됩니다.
	                  </p>
	                </div><!-- /.box-body -->
	              </div><!-- /.box -->
	            </div><!-- /.col -->
			</div><!-- row -->
		</section><!-- content -->
        
        </div><!--content-wrapper -->
       </div><!-- wrapper --> 
	
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
	<script>
		$('#input_btn').click(function(){
			console.log('#input_btn 클릭');
			window.open('${pageContext.request.contextPath}/attendance/attendance_input', '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=600,width=500,height=700');
		});
	</script>
	
</body>
</html>