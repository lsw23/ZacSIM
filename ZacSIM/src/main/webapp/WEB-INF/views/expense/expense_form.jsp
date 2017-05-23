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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
								<h3 class="box-title">지출 내역</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form id="addForm" role="form" action="${pageContext.request.contextPath}/expense/expense_form_pro" method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="exampleInputbranch_owner_cd">지점 대표 코드</label> 
										<SELECT class="form-control" name="branch_owner_cd" id="branch_owner_cd">
											<option value="M0" selected>&nbsp;</option>
											<option value="M1">M1</option>
											<option value="M2">M2</option>
											<option value="M3">M3</option>
											<option value="M4">M4</option>
											<option value="M5">M5</option>
										</SELECT>
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 내역</label> 
										<input type="text" class="form-control" id="expense_breakdown" name="expense_breakdown" placeholder="내역을 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 금액</label> 
										<input type="text" class="form-control" id="expense_price" name="expense_price" placeholder="금액을 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 수량</label> 
										<input type="text" class="form-control" id="expense_amount" name="expense_amount" placeholder="담당자를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 담당자</label> 
										<input type="text" class="form-control" id="branch_name" name="branch_name" placeholder="담당자를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 날짜</label> 
										<input type="date" class="form-control" id="expense_date" name="expense_date">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">지출 합계</label> 
										<input type="text" class="form-control" id="expense_total" name="expense_total">
									</div>									
								</div>
								<div class="box-footer">
									<button id="staffbutton" type="submit" class="btn btn-primary">글입력</button>
									<button type="reset" class="btn btn-primary">초기화</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>


</body>
</html>