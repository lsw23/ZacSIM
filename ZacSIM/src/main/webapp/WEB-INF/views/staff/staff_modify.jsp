<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
<!-- <!-- jquery를 사용하기위한 CDN주소 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
    $(document).ready(function(){
        $('#modifyButton').click(function(){
            if($('#boardPw').val().length <4) {
                alert('boardPw는 4자이상 이어야 합니다');
                $('#boardPw').focus();
            } else if($('#boardTitle').val()=='') {
                alert('boardTitle을 입력하세요');
                $('#boardTitle').focus();
            } else if($('#boardContent').val()=='') {
                alert('boardContent을 입력하세요');
                $('#boardContent').focus();
            } else if($('#boardUser').val()=='') {
                alert('boardUser을 입력하세요');
                $('#boardUser').focus();
            } else {
                $('#modifyForm').submit();
            }
        });
    });
</script>

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
		       ZakSim
		      <small>Control panel</small>
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
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" action="${pageContext.request.contextPath}/staff/staff_modify" method="post">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputstaffid">직원아이디</label>
                      <input type="text" class="form-control"  value="${staff.staff_id}" name="staff_id" readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">지점 대표코드</label>
                       <SELECT class="form-control" name="branch_owner_cd" id="branch_owner_cd" > 
					     <option value="B0010" selected>&nbsp;</option> 
					     <option value="B0011">B011</option> 
					     <option value="B0016">B016</option> 
					     <option value="B0017">B017</option> 
					     <option value="B0018">B018</option> 
					     <option value="B0019">B019</option> 
					    </SELECT>
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
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">글수정</button>
                    <button type="reset" class="btn btn-primary">초기화</button>
                    <a class="btn btn-default" href="${pageContext.request.contextPath}/staff/staff_list">글목록</a>
                  </div>
                </form>
              </div><!-- /.box -->
	      
			</div>
			</div>
			</section>
			</div>
		</div>
		  
		  
<%-- <div class="container">
    <h1>직원 수정</h1> 
    <form class="form-horizontal" action="${pageContext.request.contextPath}/staff/staff_modify" method="post">
		
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원아이디</label>
		  <input type="text" class="form-control"  value="${staff.staff_id}" name="staff_id" readonly>
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">지점 대표코드</label>
		  <SELECT class="form-control" name="branch_owner_cd" id="branch_owner_cd" > 
		     <option value="B0010" selected>&nbsp;</option> 
		     <option value="B0011">B011</option> 
		     <option value="B0016">B016</option> 
		     <option value="B0017">B017</option> 
		     <option value="B0018">B018</option> 
		     <option value="B0019">B019</option> 
		    </SELECT>
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원 비밀번호</label>
		  <input type="password" class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력해주세요">
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원 이름</label>
		  <input type="text" class="form-control" value="${staff.staff_name}" name="staff_name" placeholder="이름을 입력해주세요">
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원 연락처</label>
		  <input type="text" class="form-control" value="${staff.staff_tel}" name="staff_tel" placeholder="연락처를 입력해주세요">
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원 주소</label>
		  <input type="text" class="form-control" value="${staff.staff_addr}" name="staff_addr" placeholder="주소를 입력해주세요">
		</div>
		<div class="form-group has-success">
		  <label class="control-label" for="inputLarge">직원 가입일</label>
		  <input type="date" class="form-control" value="${staff.staff_in_date}" name="staff_in_date">
		</div>
		<div>
        <input type="submit" value="글수정"/>
        <input type="reset" value="초기화"/>
        <a class="btn btn-default" href="${pageContext.request.contextPath}/staff/staff_list">글목록</a>
   		 </div>
    </form>
</div>
</div>
</div> --%>

</body>
</html>

