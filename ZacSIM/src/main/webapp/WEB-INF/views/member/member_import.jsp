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
                $('#searchMember').submit();
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
     
      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
      
        <!-- Main content -->
        <section class="content">
          
         <!-- row 와 col로 폼 위치 조절 --> 
          <div class="row">
            <div class="col-md-6">
              
              <!-- 폼  테그 01 -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">독서실 회원 입퇴실 검색</h3>
                </div><!-- /.box-header -->
        
                <!-- form start -->
                <form id="searchMember" action="${pageContext.request.contextPath}/member/member_search" method="post">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">독서실회원코드</label>
                      <select name="so" class="form-control" id="sel1">
			    <option value="member_cd">CODE</option>
					<option value="member_nm">이름</option>
					<option value="member_sex">성별</option>
					<option value="member_sex">주소</option>
				    <option value="member_age">나이</option>
				    <option value="member_seat_state">회원상태</option>
			  </select>
			  </div>
			   <div class="col-sm-6">
			   		<input name="sv" id="searchForm" type="text" class="form-control" placeholder="검색을 입력하시오."/>
			   </div>
			   <div class="col-sm-2">
			   		<button type="button" id="searchBtn" class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
			   </div>
			   </div>
			   </form>
			</div>
			
            <!-- right column -->
            <div class="col-md-6">
              <!-- general form elements disabled -->
              <div class="box box-warning">
                <div class="box-header">
                  <h3 class="box-title">독서실 회원 입퇴실 리스트</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>독서실회원코드</th>
                      <th>이름</th>
                      <th>성별</th>
                      <th>주소</th>
                      <th>나이</th>
                      <th>회원상태</th>
                      <th>입실시간</th>
                      <th>퇴실시간</th>
                    </tr>
                  </thead>
                  </table>
	                  <c:forEach var="i" items="${list}">
				       <tr>
				         <td><a href="${pageContext.request.contextPath}/member/member_view?member_cd=${i.member_cd}">${i.member_cd}</a></td>
				         <td>${i.member_nm}</td>
				         <td>${i.member_sex}</td>
				         <td>${i.member_addr}</td>
				         <td>${i.member_age}</td>
				         <td>${i.member_seat_state}</td>
		               </tr>
				 	 </c:forEach>
					</div>
	              </div><!-- /.box -->
                </div>
               </div><!-- /.box-body -->
              </div><!-- /.box -->
             </section>
            </div><!--/.col (right) -->
          </div>   <!-- /.row -->           