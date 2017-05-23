<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		//console.log("하이");
		$('#searchBtn').click(function(){
			if($('#searchForm').val()=='') {
				alert("검색어를 입력해주세요.");
				$('#searchForm').focus();
			} else {
                $('#exitMember').submit();
            }
		});
	});
</script>
    <!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
</head>
  <body class="skin-blue">
    <div class="wrapper">
    <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>

      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />

	   <!-- 오른쪽 -->
      <!-- 수정부분  -->
      <div class="content-wrapper">
		  <section class="content-header">
		    <h1>
		       	독서실 회원
		      <small>입퇴실 목록</small>
		    </h1>
      		<ol class="breadcrumb">
		      <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
		      <li class="active">회원</li>
		    </ol>
		  </section>

        <!-- Main content -->
        <section class="content">

         <!-- row 와 col로 폼 위치 조절 --> 
          <div class="row">
            <div class="col-md-6">

              <!-- 폼  테그 01 -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">독서실 회원 검색</h3>
                  <div class="box-tools">
                </div><!-- /.box-header -->

                <!-- form start -->
                <form id="exitMember" action="${pageContext.request.contextPath}/member/member_searchs" method="post">
                  <div class="form-group">
			 	  <div class="row">
			  		<div class="col-sm-4">
                      <select name="so" class="form-control" id="sel1">
				    	<option value="member_cd">CODE</option>
						<option value="member_nm">이름</option>
					  </select>
			 	 	 </div>
			   <div class="col-sm-6">
			   		<input name="sv" id="searchForm" type="text" class="form-control" placeholder="검색을 입력하시오."/>
			   </div>
			   <div class="col-sm-2">
			   		<button type="button" id="searchBtn" class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
			   </div>
			   </div>
			   </div>
			   </form>
			</div>
			
			<div class="box-body table-responsive no-padding">
                  <table class="table">
                  <thead>
                    <tr>
                      	<th>회원코드</th>
		            	<th>이름</th>
            		  </tr>
            		</thead>  
                    <tbody>

				<c:forEach var="o" items="${list}">
			                <tr>
			                    <td><a href="${pageContext.request.contextPath}/member/member_view?member_cd=${o.member_cd}">${o.member_cd}</a></td>
			                    <td>${o.member_nm}</td>
	               		    </tr>
			 	</c:forEach>
			        </tbody>
                  </table>
                  <nav aria-label="Page navigation example">
				    <ul class="pagination justify-content-center">
				        <c:if test="${currentPage > 1}">
				            <li class="page-item">
				            	<a class="page-link" href="${pageContext.request.contextPath}/member/member_exit?currentPage=${currentPage-1}" aria-label="Previous">
				            		<span aria-hidden="true">&laquo;</span>
				            		<span class="sr-only">Previous</span>
				            	</a>
				            </li>	
				        </c:if>
				        <c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
							<c:if test="${i == currentPage}">
								<li class="page-item"><a class="page-link" href="#">${i}</a></li>
							</c:if>
							<c:if test="${i != currentPage}">
								<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/member_exit?currentPage=${i}">${i}</a></li>
							</c:if>
						</c:forEach>
						
				        <c:if test="${currentPage < lastPage}">
				            <li class="page-item">
				            	<a class="page-link" href="${pageContext.request.contextPath}/member/member_exit?currentPage=${currentPage+1}" aria-label="Next">
				            		<span aria-hidden="true">&raquo;</span>
				        			<span class="sr-only">Next</span>
				            	</a>	
				            </li>	
				        </c:if>
					 </ul>
					</nav>
                  </div>
                  </div>
                  </div>
            <!-- right column -->
            <div class="col-md-6">
            </div>
                  
         	   	<!-- Main content -->
       		    <section class="content">
                  
            	<!-- right column -->
            	<div class="row">	
	            <div class="col-md-6">
	            
	            <div class="box box-warning">
                <div class="box-header">
                  <h3 class="box-title">독서실 회원 입퇴실 리스트</h3>
                  <div class="box-tools">
                </div><!-- /.box-header -->
                
                <div class="box-body table-responsive no-padding">
                  <table class="table">
                  <thead>
                    <tr>
                      <th>현재 날짜</th>
                      <th>입실시간</th>
                      <th>퇴실시간</th>
                    </tr>
                  </thead>
                  </table>
	                  <c:forEach var="i" items="${list}">
				       <tr>
				         <td>${i.seat_date}</td>
				         <td>${i.seat_in_time}</td>
				         <td>${i.seat_out_time}</td>
		               </tr>
				 	 </c:forEach>
					</div>
				   </div>
				  </div>
				 </div>
				 </div>
				 </section>
				</div>
				</section>
				</div>
				</div>
	</body>
</html>            