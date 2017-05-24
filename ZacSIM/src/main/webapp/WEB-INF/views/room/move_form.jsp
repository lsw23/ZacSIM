<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
                 <h2 class="box-title"><i class="fa fa-pagelines"></i>좌석이동</h2>
               </div>
              </div><!-- box box-solid bg-aqua -->
        </div><!-- col-md-12 -->
        <div class="col-md-12">
        	<h3>열람실</h3>
        	<c:forEach var="r" items="${roomlist}">
        	<span class="room_span">
        		<input type="hidden" value="${r.room_cd}"/>
        		<button class="btn bg-maroon margin" >
        			${r.room_nm}
        		</button>
        	</span>	
        	</c:forEach>
					
        </div><!-- col-md-12 -->
        <hr/>
        <div class="col-md-12">
        	<h3>열람석</h3>
        		
        </div><!-- col-md-12 -->
        <hr/>
        <div class="col-md-12">
        	<h3>열람실 ㅁ  열람석 ㅁ</h3>
        		
        </div><!-- col-md-12 -->
    </div><!-- row -->
    <!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <script>
    	$('.room_span').click(function(){
    		var room_cd =$(this).children().val();
    		console.log('room_cd :' + room_cd);
    		var parm = {'room_cd':room_cd};
    		$.ajax({
    			type:"POST",
    			url:"${pageContext.request.contextPath}/room/move_seat",
    			data: parm,
    			success:function(data){
      			  console.log('통신 성공');
	      		},
	      		error:function(data){
	      		  console.log('통신 실패');
	      		}
    		});
    	});
    </script>         
</body>
</html>