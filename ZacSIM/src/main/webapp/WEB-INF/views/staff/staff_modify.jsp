<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 헤드 -->
<c:import url="../module2/head.jsp" />
<!-- JS -->
<c:import url="../module2/jsscript.jsp" />
<!-- <!-- jquery를 사용하기위한 CDN주소 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
    $(document).ready(function(){
    	$('#staffbutton').click(function(){
			if($('#staff_id').val()==''){
				alert('아이디를 입력하세요');	
				$('#staff_id').focus();
			}else if($('#staff_pw').val()==''){
				alert('비밀번호를 입력하세요');
				$('#staff_pw').focus();
			}else if($('#staff_pw').val().length <4){
				alert('비밀번호는 4자이상 이어야 합니다');
				$('#staff_pw').focus();
			}else if($('#staff_name').val()==''){
				alert('이름을 입력하세요');
				$('#staff_name').focus();
			}else if($('#staff_tel').val()==''){
				alert('전화번호를 입력하세요');
				$('#staff_tel').focus();
			}else if($('#staff_addr').val()==''){
				alert('주소를 입력하세요');
				$('#staff_addr').focus();
			}else if($('#staff_detail_addr').val()==''){
				alert('상세주소를 입력하세요');
				$('#staff_detail_addr').focus();
			}else{
				$('#addForm').submit();
			}	
		});
	});
</script>


</head>
<body class="skin-blue">
	<div class="wrapper">
		<!-- 상단 -->
		<c:import url="../module2/top.jsp" />

		<!-- 왼쪽 -->
		<c:import url="../module2/left.jsp" />

		<!-- 수정부분  -->
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					ZakSim <small>Control panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
					<li class="active">직원</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">직원 등록</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form id="addForm" role="form" action="${pageContext.request.contextPath}/staff/staff_modify" method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="exampleInputstaffid">직원아이디</label> 
										<input type="text" class="form-control" value="${staff.staff_id}" name="staff_id" readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">지점 대표코드</label> 
										<input type="text" class="form-control" name="branch_owner_cd" value="${sessionScope.branchOwner.branch_owner_cd}" readonly />
									</div>
									<div class="form-group">
										<label for="exampleInputFile">직원 비밀번호</label>
										 <input type="password" class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">직원 이름</label> 
										<input type="text" class="form-control" value="${staff.staff_name}" name="staff_name" placeholder="이름을 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">직원 연락처</label> 
										<input type="text" class="form-control" value="${staff.staff_tel}" name="staff_tel" placeholder="연락처를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">직원 주소</label> 
										<input type="text" class="form-control" value="${staff.staff_addr}" name="staff_addr" placeholder="주소를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">직원 가입일</label> 
										<input type="date" class="form-control" value="${staff.staff_in_date}" name="staff_in_date">
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button id="staffbutton" type="button" class="btn btn-primary">글수정</button>
									<button type="reset" class="btn btn-primary">초기화</button>
									<a class="btn btn-default" href="${pageContext.request.contextPath}/staff/staff_list">글목록</a>
								</div>
							</form>
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
		</div>
	</div>

	<script>
	$('#staff_menu').addClass('active');
	$('#staff02').addClass('active');
</script>
</body>
</html>

