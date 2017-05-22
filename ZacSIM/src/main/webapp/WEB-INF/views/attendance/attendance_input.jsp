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
    	<div class="content-wrapper">
    		<section class="content">
				<div class="row">
					<div class="col-md-4">
		              <!-- Info box -->
		              <div class="box box-solid bg-aqua">
		                <div class="box-header">
		                  <h2 class="box-title"><i class="fa fa-bell-o"></i>출결</h2>
		                </div>
		                <div class="box-body">
		                  <form>
		                  	<div class="form-group">
		                      <label for="exampleInputPassword1">출결번호</label>
		                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="회원의 출결번호를 입력해주세요.">
		                      <button class="btn btn-block btn-info btn-flat">확인</button>
		                    </div>
		                  </form>
		                </div><!-- /.box-body -->
		              </div><!-- /.box -->
		            </div><!-- /.col -->
		            <div class="col-md-4">
		              <!-- Warning box -->
		              <div class="box box-solid bg-yellow">
		                <div class="box-header">
		                  <h3 class="box-title"></h3>
		                </div>
		                <div class="box-body">
							홍길동님의 입실처리가 완료되었습니다.
		                </div><!-- /.box-body -->
		              </div><!-- /.box -->
		            </div><!-- /.col -->
				</div>
			</section>
		</div>
	</div>		
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />			
</body>
</html>