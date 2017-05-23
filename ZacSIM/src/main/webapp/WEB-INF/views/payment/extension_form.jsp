<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
</head>
<body class="skin-blue">
    <div class="row">
      <div class="col-md-6">
         <!-- Info box -->
             <div class="box box-solid bg-orange">
               <div class="box-header">
                 <h2 class="box-title"><i class="fa fa-search-minus"></i>기간연장</h2>
               </div>
              </div><!-- box box-solid bg-aqua -->
           <div class="container">
                <!-- form start -->
                  <div class="box-body">
                  	<form>
						<input type="hidden" name="branch_owner_cd" value="${detailmember.branch_owner_cd}"/>
						<input type="hidden" name="room_cd" value="${detailmember.room_cd}"/>
						<input type="hidden" name="seat_cd" value="${detailmember.seat_cd}"/>
						<input type="hidden" name="member_cd" value="${detailmember.member_cd}"/>
						<div class="form-group">
							<label class="control-label" for="inputLarge">연장일</label>
							<input type="date" class="form-control" name="member_end_date"/>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">결제금액</label>
							<input type="text" class="form-control" name="total_amount"/>
						</div>
						<div class="form-group">
						    <label for="inputLarge">결제방법</label>
						    <select name="pay_option" class="form-control">
						      <option value="카드">카드</option>
						      <option value="현금">현금</option>
						      <option value="자동이체">자동이체</option>
						    </select>
					    </div>
						<div>
							<strong>${detailmember.member_nm}</strong>회원님의 기간을 연장하시겠습니까? 
							<button type="button" class="btn btn-primary">확인</button>
						</div>
                  	</form>
                  </div> <!-- box_body -->
           </div> <!-- container -->
      </div> <!-- col-md-6 -->
    </div> <!-- row -->
                 
</body>
</html>