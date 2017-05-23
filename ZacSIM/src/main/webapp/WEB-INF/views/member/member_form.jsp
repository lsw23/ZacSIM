<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		//console.log("하이");
		$('#joinForm').click(function(){
			var member_sex = $('#member_sex').val();
			var member_regi_path = $('#member_regi_path').val();
			var member_use_pur = $('#member_use_pur').val();
			if($('#staff_id').val().length < 5) {
	            alert('직원아이디를 5자 이상 입력하세요.');
	            $('#staff_id').focus();
			} else if($('#member_nm').val()=='') {
	            alert('이름을 입력해주세요');
	            $('#member_nm').focus();
			}  else if(member_sex == '선택'){
	            alert('성별을 선택해 주세요');
	            $('#member_sex').focus();
			} else if($('#member_tel').val()=='') {
	            alert('연락처를 입력해주세요');
	            $('#member_tel').focus();
			} else if($('#member_addr').val()=='') {
	            alert('주소를 입력해주세요');
	            $('#member_addr').focus();
			} else if($('#member_age').val()=='') {
	            alert('나이를 입력해주세요');
	            $('#member_age').focus();
			} else if($('#member_seat_state').val()=='') {
	            alert('회원상태를 입력해주세요');
	            $('#member_seat_state').focus();
			}  else if(member_regi_path == '설명'){
	            alert('등록경로를 선택해 주세요');
	            $('#member_regi_path').focus();
			}  else if(member_use_pur == '설명'){
	            alert('이용목적을 선택해 주세요');
	            $('#member_use_pur').focus();    
			} else {
				$('#insertMember').submit();    
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
		      <small>등록</small>
		    </h1>
		    <ol class="breadcrumb">
		      <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
		      <li class="active">회원</li>
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
					<h3 class="box-title">독서실 회원 등록</h3>
					</div><!-- /.box-header -->
                	<!-- form start -->
					<form role="form" id="insertMember" action="${pageContext.request.contextPath}/member/member_pro" method="post">
						<div class="box-body">	
							<div class="form-group">
	                      	   <label class="control-label" for="inputLarge">지점대표코드</label>
								<input type="text" class="form-control" value="${sessionScope.branchOwner.branch_owner_cd}" name="branch_owner_cd" readonly>
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">직원 아이디</label>
								<input type="text" class="form-control" id="staff_id" name="staff_id" placeholder="직원아이디를 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">이름</label>
								<input type="text" class="form-control" id="member_nm" name="member_nm" placeholder="이름을 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">성별</label>
								<select class="form-control" name="member_sex" id="member_sex" >
								<option value="선택" selected>성별을 선택해 주세요</option> 
									<option value="남자">남자</option> 
									<option value="여자">여자</option> 
								</select>	
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">연락처</label>
								<input type="text" class="form-control" id="member_tel" name="member_tel" placeholder="연락처를 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">주소</label>
								<input type="text" class="form-control" id="member_addr" name="member_addr" placeholder="주소를 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">나이</label>
								<input type="text" class="form-control" id="member_age" name="member_age" placeholder="나이를 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">회원상태</label>
								<input type="text" class="form-control" id="member_seat_state" name="member_seat_state" placeholder="회원상태를 입력해주세요">
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">등록경로</label>
								<select class="form-control" name="member_regi_path" id="member_regi_path" > 
									<option value="설명" selected>등록경로를 선택해 주세요</option> 
									<option value="지인소개">지인소개</option> 
									<option value="인터넷">인터넷</option> 
									<option value="플래카드">플래카드</option> 
									<option value="전단지">전단지</option> 
									<option value="기타">기타</option> 
								</select>
							</div>
							<div class="form-group">
								<label class="control-label" for="inputLarge">주 이용 목적</label>
								<select class="form-control" name="member_use_pur" id="member_use_pur" > 
									<option value="설명" selected>이용목적을 선택해 주세요</option> 
									<option value="외국어">외국어</option> 
									<option value="수능">수능</option> 
									<option value="자격증">자격증</option> 
									<option value="공무원">공무원</option> 
									<option value="기타">기타</option> 
								</select>
							</div>
						<div>
							<input class="btn btn-primary" id="joinForm" type="button" value="회원등록"/>
       					 	<input class="btn btn-primary" type="reset" value="초기화"/>
               			</div>
               		</div>	
               </form>
              </div><!-- /.box -->
			 </div>
			</div> 
		   </section>
	      </div>	
		</div>
	</body>
</html>