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
             <h3>결제가 완료되었습니다.</h3>
			 <h3>회원의 출결번호는 ${inouting}입니다.</h3>
   		</div><!-- col-md-12 -->
	</div>
	<c:import url="../module2/jsscript.jsp" />
	<script>
		opener.document.location.reload();
	</script>
</body>
</html>

 