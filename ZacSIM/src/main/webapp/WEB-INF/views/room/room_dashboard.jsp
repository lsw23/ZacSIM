<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
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
		       	열람실
		      <small>현황</small>
		    </h1>
		    <ol class="breadcrumb">
		      <li><a href="${pageContext.request.contextPath}/dashboard/today_status"><i class="fa fa-table"></i>Home</a></li>
		      <li class="active">열람실 관리</li>
		    </ol>
		  </section>
			
	<!-- Main content -->
        <section class="content">
		
		<!-- 테이블1(밑에 div x2 추가 )-->       
          <div class="row">
            <div class="col-xs-12">
            
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">현황</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
		            	<th>열람실</th>
		           	    <th>입실</th>
		                <th>퇴실</th>
		                <th>만료예정</th>
		                <th>총원</th>
            		  </tr>
                    </thead>
                    <tbody>
                       <tr>
                        <td>201호</td>
                        <td>1</td>
                        <td>6</td>
                        <td>0</td>
                        <td>7</td>
                      </tr> 
                    </tbody>
                  </table>
                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
             </div><!-- col-xs-12 -->
             
             
              <!-- 입실 테이블 -->
				       <div class="col-xs-12">
			              <div class="box">
			                <div class="box-header">
			                    <ul class="nav nav-tabs">
								    <li class="active"><a data-toggle="tab" href="#home">입실</a></li>
								    <li><a data-toggle="tab" href="#menu1">퇴실 </a></li>
								    <li><a data-toggle="tab" href="#menu2">만료 </a></li>
								  </ul>
			                </div><!-- /.box-header -->
			                <div class="box-body">
			                   <div class="tab-content">
								    <div id="home" class="tab-pane fade in active">
								      	<table id="example2" class="table table-bordered table-hover">
						                    <thead>
						                      <tr>
								            	<th>열람실</th>
								           	    <th>열람석 번호</th>
								                <th>회원코드</th>
								                <th>이름</th>
								                <th>시작일</th>
								                <th>만료일</th>
						            		  </tr>
						                    </thead>
						                    <tbody>
						                      <tr>
						                        <td>201호</td>
						                        <td>7</td>
						                        <td>member_cd10</td>
						                        <td>박석민</td>
						                        <td>2017-05-17</td>
						                        <td>2017-06-17</td>
						                      </tr> 
						                    </tbody>
						                  </table>
									</div>
									
								    <div id="menu1" class="tab-pane fade">
								      <table id="example2" class="table table-bordered table-hover">
						                    <thead>
						                      <tr>
								            	<th>Rendering engine</th>
								           	    <th>Browser</th>
								                <th>Platform(s)</th>
								                <th>Engine version</th>
								                <th>CSS grade</th>
						            		  </tr>
						                    </thead>
						                    <tbody>
						                      <!-- <tr>
						                        <td>Other browsers</td>
						                        <td>All others</td>
						                        <td>-</td>
						                        <td>-</td>
						                        <td>U</td>
						                      </tr> -->
						                    </tbody>
						                    <tfoot>
						                      <tr>
						                        <th>Rendering engine</th>
						                        <th>Browser</th>
						                        <th>Platform(s)</th>
						                        <th>Engine version</th>
						                        <th>CSS grade</th>
						                      </tr>
						                    </tfoot>
						                  </table>
								    </div>
										    
								    <div id="menu2" class="tab-pane fade">
								      <table id="example2" class="table table-bordered table-hover">
						                    <thead>
						                      <tr>
								            	<th>Rendering engine</th>
								           	    <th>Browser</th>
								                <th>Platform(s)</th>
								                <th>Engine version</th>
								                <th>CSS grade</th>
						            		  </tr>
						                    </thead>
						                    <tbody>
						                      <!-- <tr>
						                        <td>Other browsers</td>
						                        <td>All others</td>
						                        <td>-</td>
						                        <td>-</td>
						                        <td>U</td>
						                      </tr> -->
						                    </tbody>
						                    <tfoot>
						                      <tr>
						                        <th>Rendering engine</th>
						                        <th>Browser</th>
						                        <th>Platform(s)</th>
						                        <th>Engine version</th>
						                        <th>CSS grade</th>
						                      </tr>
						                    </tfoot>
						                  </table>
								    </div>
										 
								  </div><!-- tab-content -->
			                </div><!-- /.box-body -->
			              </div><!-- /.box -->
			             </div><!-- col-xs-12 -->
					</div><!-- row -->
			</section>
	 	</div><!-- content-wrapper -->
	</div><!-- wrapper -->
	
	        
	
	
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
</body>
</html>