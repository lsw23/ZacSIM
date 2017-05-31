<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
  <head>
  	<!-- 헤드 -->
	<c:import url="../module2/advanced_css.jsp"/>
	
 </head>
 <body class="skin-blue">
	<div class="row">
		<div class="col-md-12">
             <!-- Info box -->
             <div class="box box-solid bg-olive">
               <div class="box-header">
                 <h2 class="box-title"><i class="fa fa-pagelines"></i>결제</h2>
               </div>
              </div><!-- box box-solid bg-aqua -->
		             
                <div class="container">
                <!-- form start -->
                  <div class="box-body">
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
					    <label for="fname">회원코드&nbsp;</label>
					    <input type="text" id="member_cd" name="member_cd" class="form-control">
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">등록일</label>
					    <input type="date" name="member_regi_date" class="form-control">
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">만료일</label>
					    <input type="date" name="member_end_date" class="form-control">
					    </div>

						<div class="form-group">
					    <label for="lname">결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <label>
					    		학생 	<input type="radio" name="r3" class="flat-red" checked/>
	                    </label>
	                    <label>
	                      		일반 <input type="radio" name="r3" class="flat-red"/>
	                    </label>
					    <input type="text" id="total_amount" name="total_amount" class="form-control">
					    </div>
						
					    <div class="form-group">
					    <label for="결제 방법">결제방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <select id="결제 방법" name="pay_option" class="form-control">
					      <option value="card">카드</option>
					      <option value="cash">현금</option>
					    </select>
					    </div>

					    <input type="hidden" value="nice" name="niceValue">

					    <div class="box-footer">
					       <button type="submit" class="btn btn-primary" onclick="getSubmit()" value="결제">결제</button>
					       <button type="button" id="card">테스트</button>
						   <input type="button" class="btn btn-primary" value="창닫기" onclick="window.close()">				   
					    </div>
					  </form>
              		</div>
             	</div>
            
		 </div><!-- col-md-12 -->
	</div><!-- row -->
    <!-- JS -->
    <c:import url="../module2/jsscript.jsp" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
	<script>
		//라디오박스 css
	    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	      checkboxClass: 'icheckbox_flat-green',
	      radioClass: 'iradio_flat-green'
	    });
		
		
		//결제 요금 계산
		$('#discount_amount').blur(function(){
			console.log('요금 테스트');
			var pay = $('#pay_amount').val() *1;
			var discount = $('#discount_amount').val() *1;
			var total = pay - discount;
			$('#total_amount').val(total);
		});
		
		
		$('#card').click(function(){
			var IMP = window.IMP; // 생략가능
		    IMP.init('imp39602041'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

		    IMP.request_pay({
		        pg : 'inicis', // version 1.1.0부터 지원.
		        pay_method : 'card',
		        merchant_uid : 'merchant_' + new Date().getTime(),
		        name : '주문명:ZakSIM 열람석 이용권',
		        amount : 2000,
		        buyer_email : 'iamport@siot.do',
		        buyer_name : '양지훈',
		        buyer_tel : '010-1234-5678',
		        buyer_addr : '서울특별시 강남구 삼성동',
		        buyer_postcode : '123-456',
		        m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		    }, function(rsp) {
		        if ( rsp.success ) {
		            var msg = '결제가 완료되었습니다.';
		            msg += '고유ID : ' + rsp.imp_uid;
		            msg += '상점 거래ID : ' + rsp.merchant_uid;
		            msg += '결제 금액 : ' + rsp.paid_amount;
		            msg += '카드 승인번호 : ' + rsp.apply_num;
		        } else {
		            var msg = '결제에 실패하였습니다.';
		            msg += '에러내용 : ' + rsp.error_msg;
		        }
		        alert(msg);
		    });
		});
		 	
		
	</script>
 </body>
</html>

 