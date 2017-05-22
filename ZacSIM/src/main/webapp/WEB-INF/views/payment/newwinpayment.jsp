<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <HEAD>
  <TITLE> New Document </TITLE>
<script type="text/javascript">
$(document).ready(function(){
	var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';	
	$('.link').click(function(){

	var linkpage = $(this).attr('value');	
    window.open(contextPath+'/payment/'+linkpage, '_self');
	});
});
</script>
 </HEAD>
 <BODY>
        <div class="row">
        <div class="col-md-6">
              <div class="box box-primary">
                <div class="container">
				  <ul class="nav nav-tabs">
				    <li><a data-toggle="tab" value="newwinmember" class="link">회원가입</a></li>
				    <li><a data-toggle="tab" value="newwinpayment" class="link">결제</a></li>
				    <li><a data-toggle="tab" value="newwindetail?member_cd=member_cd6" class="link">상세정보</a></li>
				  </ul>

                <!-- form start -->
                  <div class="box-body">
                  <h3 class="box-title">독서실 상세 정보</h3>
                      <form name="myForm" name="postForm" method="post" action="${pageContext.request.contextPath}/payment/paymentend">					    
					    <div class="form-group">
					    <label for="fname">지점대표코드</label>
					    <input type="text" id="branch_owner_cd" name="branch_owner_cd" class="form-control" value="${branch_owner_cd}" readonly>
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">열람실코드&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="room_cd" name="room_cd" class="form-control" value="${room_cd}" readonly>
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">열람석코드&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="seat_cd" name="seat_cd" class="form-control" value="${seat_cd}" readonly>
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">회원코드&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="member_cd" name="member_cd" class="form-control" value="${member_cd}">
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">회원요금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="pay_amount" name="pay_amount" class="form-control" placeholder="회원요금">
					    </div>
						
						<div class="form-group">
					    <label for="lname">할인금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="discount_amount" name="discount_amount" class="form-control" placeholder="할인 금액">
						</div>
						
						<div class="form-group">
					    <label for="lname">결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="total_amount" name="total_amount" class="form-control" placeholder="결제금액">
					    </div>
						
						<div class="form-group">
					    <label for="lname">결제일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="date" id="pay_date" name="pay_date" class="form-control" placeholder="결제일">
					    </div>	
					    
					    <div class="form-group">
					    <label for="lname">해지일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="date" id="pay_due" name="pay_due" class="form-control" placeholder="해지일">
					    </div>					    
					    
					    <div class="form-group">
					    <label for="결제 방법">결제방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <select id="결제 방법" name="결제 방법" class="form-control">
					      <option value="카드">카드</option>
					      <option value="현금">현금</option>
					      <option value="자동이체">자동이체</option>
					    </select>
					    </div>

					    <input type="hidden" value="nice" name="niceValue">

					    <div class="box-footer">
					       <button type="submit" class="btn btn-primary" onclick="getSubmit()" value="결제">결제</button>
					    </div>
					  </form>
              		</div>
             	</div>
            </div>
           </div>
           </div>
 </BODY>
</HTML>

 