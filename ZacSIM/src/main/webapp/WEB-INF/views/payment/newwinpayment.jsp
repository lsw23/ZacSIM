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
             <div class="box box-solid bg-aqua">
               <div class="box-header">
                 <h2 class="box-title"><i class="fa fa-bell-o"></i>결제</h2>
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
					    <input type="text" id="member_cd" name="member_cd" class="form-control" value="${member_cd}">
					    </div>
					    
					    <div class="form-group">
					    <label for="fname">회원요금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <label>
					    		학생 	<input type="radio" name="r3" class="flat-red" checked/>
	                    </label>
	                    <label>
	                      		일반 <input type="radio" name="r3" class="flat-red"/>
	                    </label>
					    	<input type="text" id="pay_amount" name="pay_amount" class="form-control">
					    </div>
						
						<div class="form-group">
					    <label for="lname">할인금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    
					    <input type="text" id="discount_amount" name="discount_amount" class="form-control">
						</div>
						
						<div class="form-group">
					    <label for="lname">결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <input type="text" id="total_amount" name="total_amount" class="form-control">
					    </div>

					    <div class="form-group">
					    <label for="결제 방법">결제방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					    <select id="결제 방법" name="pay_option" class="form-control">
					      <option value="카드">카드</option>
					      <option value="현금">현금</option>
					      <option value="자동이체">자동이체</option>
					    </select>
					    </div>

					    <input type="hidden" value="nice" name="niceValue">

					    <div class="box-footer">
					       <button type="submit" class="btn btn-primary" onclick="getSubmit()" value="결제">결제</button>
						   <input type="button" class="btn btn-primary" value="창닫기" onclick="window.close()">				   
					    </div>
					  </form>
              		</div>
             	</div>
            
		 </div><!-- col-md-12 -->
	</div><!-- row -->
    <!-- JS -->
    <c:import url="../module2/jsscript.jsp" />
	<script>
		//라디오박스 css
	    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	      checkboxClass: 'icheckbox_flat-green',
	      radioClass: 'iradio_flat-green'
	    });
		
		$('#discount_amount').blur(function(){
			console.log('요금 테스트');
			var pay = $('#pay_amount').val() *1;
			var discount = $('#discount_amount').val() *1;
			var total = pay - discount;
			$('#total_amount').val(total);
		});
	</script>
 </body>
</html>

 