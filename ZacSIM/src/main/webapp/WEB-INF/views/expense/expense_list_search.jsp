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
					<li class="active">지출내역</li>
				</ol>
			</section>

			<!-- 내용 시작 -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-danger">
							<div class="box-header">
								<h3 class="box-title">
									<b>수입 목록</b>
								</h3>
							</div>
							<form action="${pageContext.request.contextPath}/expense/expense_list_search_pro" method="post">
								<div class="box-body">
									<div class="form-group">
										<b>기간 선택:</b> 
										&nbsp;&nbsp; 
										<input name="startDate" type="date" style="width: 150px; height: 25px;"> &nbsp;~&nbsp; <input name="endDate" type="date" style="width: 150px; height: 25px;"> 
										<input class="btnPadding" type="submit" value="검색" />
										<p>
											<small>(기간은 최소 하루 이상으로 선택해 주세요. ex.2017-01-01의 수입내역->
												2017-01-01 ~ 2017-01-02)</small>
										</p>
									</div>
								</div>
							</form>
						</div>
					</div>				
					<div class="col-xs-12">
						<div class="box">
							<div class="box-body table-responsive no-padding">
								<table class="table ">
									<thead>
										<tr>
											<th>지출 번호</th>
											<th>지점 대표코드</th>
											<th>지출 내역</th>
											<th>지출 금액</th>
											<th>지출 담당자</th>
											<th>지출 날짜</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="s" items="${list}">
											<tr>
												<td>${s.expense_cd}</td>
												<td>${s.branch_owner_cd}</td>
												<td>${s.expense_breakdown}</td>
												<td>${s.expense_total}</td>
												<td>${s.branch_name}</td>
												<td>${s.expense_date}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div>
									<a href="${pageContext.request.contextPath}/expense/expense_form">지출내역추가</a>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-center">
											<c:if test="${currentPage > 1}">
												<li class="page-item">
												<a class="page-link" href="${pageContext.request.contextPath}/expense/expense_list?currentPage=${currentPage-1}" aria-label="Previous"> 
												<span aria-hidden="true">&laquo;</span>
												<span class="sr-only">Previous</span>
												</a></li>
											</c:if>
											<c:forEach var="i" begin="${startPage}" end="${endPage}"step="1">
												<c:if test="${i == currentPage}">
													<li class="page-item"><a class="page-link" href="#">${i}</a></li>
												</c:if>
												<c:if test="${i != currentPage}">
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/expense/expense_list?currentPage=${i}">${i}</a></li>
												</c:if>
											</c:forEach>
											<c:if test="${currentPage < lastPage}">
												<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/expense/expense_list?currentPage=${currentPage+1}" aria-label="Next"> 
												<span aria-hidden="true">&raquo;</span>
												<span class="sr-only">Next</span>
												</a></li>
											</c:if>
										</ul>
									</nav>
								</div>
							</div>					
						</div>	
					</div>
				</div>
			<!-- 내용 끝 -->	
			</section>
		</div>
	</div>
</body>
</html>




