<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>ZacSIM Dashboard</title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
 	<!-- Bootstrap 3.3.2 -->
   <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <!-- Font Awesome Icons -->
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   <!-- Ionicons -->
   <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
   <!-- Morris chart -->
   <link href="${pageContext.request.contextPath}/resources/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
   <!-- Theme style -->
   <link href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
   <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
   <link href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
   
</head>
<body class="skin-blue">
    <div class="wrapper">
      <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
      
	  <!-- -----------------------내용 바로 위----------------------------- -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1> 통계
            <small>(${today})</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
            <li class="active">통계</li>
          </ol>
        </section>

		<!-- ------------------------내용!!!------------------------------ -->
        <section class="content">
  
          <!-- 작은 박스 4개 -->
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                  <h3 class="info-box-text">총 회원</h3>
                  <span class="info-box-number">${MemberNo} <small>명</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                  <h3 class="info-box-text"><b>${month}월</b> 등록 회원</h3>
                  <span class="info-box-number">${monthMemberNo} <small>명</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>
                <div class="info-box-content">
                  <h3 class="info-box-text"><b>${month}월</b> 매출</h3>
                  <span class="info-box-number"># <small>원</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion ion-ios-cart-outline"></i></span>
                <div class="info-box-content">
                  <h3 class="info-box-text"><b>${month}월</b> 지출</h3>
                  <span class="info-box-number"># <small>원</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          
		  <!-- 원형 차트 3개 -->
          <div class="row">
          
            <div class="col-md-4">
             <div class="box box-default">
               <div class="box-header with-border">
               	 <i class="fa fa-bar-chart-o"></i>
                 <h3 class="box-title"><b>회원 성비</b></h3>
                 <div class="box-tools pull-right">
                   <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                   <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div><!-- /.box-header -->
               <div class="box-body">  
	            <div id="sex" style="height: 250px;"></div>
               </div><!-- /.box-body -->
              </div><!-- /.box -->
             </div><!-- /.col -->
            
            <div class="col-md-4">
             <div class="box box-default">
               <div class="box-header with-border">
               	 <i class="fa fa-bar-chart-o"></i>
                 <h3 class="box-title"><b>회원 등록 경로</b></h3>
                 <div class="box-tools pull-right">
                   <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                   <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div><!-- /.box-header -->
               <div class="box-body">  
	            <div id="path" style="height: 250px;"></div>
               </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
            
            <div class="col-md-4">
             <div class="box box-default">
               <div class="box-header with-border">
               	 <i class="fa fa-bar-chart-o"></i>
                 <h3 class="box-title"><b>주 이용 목적</b></h3>
                 <div class="box-tools pull-right">
                   <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                   <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div><!-- /.box-header -->
               <div class="box-body">  
	            <div id="purpose" style="height: 250px;"></div>
               </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          
          </div><!-- /.row -->
          <!-- 원형 차트 3개 end-->
          
          	<!-- 범위 그래프 차트 -->
				<!-- <div class="row"> //누적합산그래프
					<div class="col-md-12">
						<div class="box box-default">
							<div class="box-header with-border">
								<i class="fa fa-bar-chart-o"></i>
								<h3 class="box-title">
									<b>분기별 등록자 추이</b>
								</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<button class="btn btn-box-tool" data-widget="remove">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							/.box-header

							<div class="box-body chart-responsive">
								<div class="chart" id="revenue-chart" style="height: 300px;"></div>
							</div>
							/.box-body
						</div>
					</div>
				</div> -->
				
				<div class="row">
					<div class="col-md-12">
						<div class="box box-default">
							<div class="box-header with-border">
								<i class="fa fa-bar-chart-o"></i>
								<h3 class="box-title">
									<b>월별 등록자 추이</b>
								</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							
							<div class="box-body">
			                	<canvas id="areaChart" height="250"></canvas>
			                </div><!-- /.box-body -->
						</div>
					</div>
				</div>
				
				<!-- 범위 그래프 차트 end -->
          
        </section><!-- /.content -->

      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- script -->
    <!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/demo.js" type="text/javascript"></script>
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/chartjs/Chart.min.js" type="text/javascript"></script>
    
    <!-- Page script -->
    <script type="text/javascript">
      $(function () {
		
    	// 회원 성비
    	var MenNo = '<c:out value='${MenNo}'/>';
		MenNo *= 1; // int변환
		var womanNo = '<c:out value='${womanNo}'/>';
		womanNo *= 1;
		var donut = new Morris.Donut({
		    element: 'sex',
		    resize: true,
		    colors: ["#6D6CFF", "#f56954"],
		    data: [
		      {label: "남성", value: MenNo},
		      {label: "여성", value: womanNo}
		    ],
		    hideHover: 'auto'
		});
    	
		// 회원 등록 경로
		var pamphletNo = '<c:out value='${pamphletNo}'/>';
		pamphletNo *= 1; // int변환
		var placardNo = '<c:out value='${placardNo}'/>';
		placardNo *= 1;
		var introductionNo = '<c:out value='${introductionNo}'/>';
		introductionNo *= 1;
		var internetNo = '<c:out value='${internetNo}'/>';
		internetNo *= 1;
		var pathEtcNo = '<c:out value='${pathEtcNo}'/>';
		pathEtcNo *= 1;
		var donut = new Morris.Donut({
		    element: 'path',
		    resize: true,
		    colors: ["#6D6CFF", "#f56954", "#00a65a", "#FFE400", "#3c8dbc"],
		    data: [
		      {label: "지인소개", value: introductionNo},
		      {label: "인터넷", value: internetNo},
		      {label: "플래카드", value: placardNo},
		      {label: "전단지", value: pamphletNo},
		      {label: "기타", value: pathEtcNo}
		    ],
		    hideHover: 'auto'
		});
		
		// 주 이용 목적
		var languageNo = '<c:out value='${languageNo}'/>';
		languageNo *= 1; // int변환
		var CSATNo = '<c:out value='${CSATNo}'/>';
		CSATNo *= 1;
		var publicOfficialNo = '<c:out value='${publicOfficialNo}'/>';
		publicOfficialNo *= 1;
		var licenseNo = '<c:out value='${licenseNo}'/>';
		licenseNo *= 1;
		var purposeEtcNo = '<c:out value='${purposeEtcNo}'/>';
		purposeEtcNo *= 1;
		var donut = new Morris.Donut({
		    element: 'purpose',
		    resize: true,
		    colors: ["#FFE400", "#f56954", "#00a65a", "#6D6CFF", "#3c8dbc"],
		    data: [
		      {label: "외국어", value: languageNo},
		      {label: "수능", value: CSATNo},
		      {label: "공무원", value: publicOfficialNo},
		      {label: "자격증", value: licenseNo},
		      {label: "기타", value: purposeEtcNo}
		    ],
		    hideHover: 'auto'
		});
		
		/* // 분기별 등록자 추이(아이템들끼리 누적 합산되는 그래프)
        var area = new Morris.Area({
          element: 'revenue-chart',
          resize: true,
          data: [
        	  {y: '2016 Q1', item1: 2666},
              {y: '2016 Q2', item1: 2778},
              {y: '2016 Q3', item1: 4912},
              {y: '2016 Q4', item1: 3767},
              {y: '2017 Q1', item1: 6810},
              {y: '2017 Q2', item1: 5670},
              {y: '2017 Q3', item1: 4820},
              {y: '2017 Q4', item1: 15073} 
          ],
          xkey: 'y',
          ykeys: ['item1'],
          labels: ['등록자 수'],
          lineColors: ['#3c8dbc'],
          hideHover: 'auto'
        }); */
		
        // 월별 등록자 추이
        var januaryInsertNo = '<c:out value='${januaryInsertNo}'/>';
        januaryInsertNo *= 1; // int변환
		var februaryInsertNo = '<c:out value='${februaryInsertNo}'/>';
		februaryInsertNo *= 1;
		var marchInsertNo = '<c:out value='${marchInsertNo}'/>';
		marchInsertNo *= 1;
		var aprilInsertNo = '<c:out value='${aprilInsertNo}'/>';
		aprilInsertNo *= 1;
		var mayInsertNo = '<c:out value='${mayInsertNo}'/>';
		mayInsertNo *= 1;
		var juneInsertNo = '<c:out value='${juneInsertNo}'/>';
		juneInsertNo *= 1; 
		var julyInsertNo = '<c:out value='${julyInsertNo}'/>';
		julyInsertNo *= 1;
		var augustInsertNo = '<c:out value='${augustInsertNo}'/>';
		augustInsertNo *= 1;
		var septemberInsertNo = '<c:out value='${septemberInsertNo}'/>';
		septemberInsertNo *= 1;
		var octoberInsertNo = '<c:out value='${octoberInsertNo}'/>';
		octoberInsertNo *= 1;
		var novemberInsertNo = '<c:out value='${novemberInsertNo}'/>';
		novemberInsertNo *= 1; 
		var decemberInsertNo = '<c:out value='${decemberInsertNo}'/>';
		decemberInsertNo *= 1;
        
		var januaryInsertMenNo = '<c:out value='${januaryInsertMenNo}'/>';
        januaryInsertMenNo *= 1; // int변환
		var februaryInsertMenNo = '<c:out value='${februaryInsertMenNo}'/>';
		februaryInsertMenNo *= 1;
		var marchInsertMenNo = '<c:out value='${marchInsertMenNo}'/>';
		marchInsertMenNo *= 1;
		var aprilInsertMenNo = '<c:out value='${aprilInsertMenNo}'/>';
		aprilInsertMenNo *= 1;
		var mayInsertMenNo = '<c:out value='${mayInsertMenNo}'/>';
		mayInsertMenNo *= 1;
		var juneInsertMenNo = '<c:out value='${juneInsertMenNo}'/>';
		juneInsertMenNo *= 1; 
		var julyInsertMenNo = '<c:out value='${julyInsertMenNo}'/>';
		julyInsertMenNo *= 1;
		var augustInsertMenNo = '<c:out value='${augustInsertMenNo}'/>';
		augustInsertMenNo *= 1;
		var septemberInsertMenNo = '<c:out value='${septemberInsertMenNo}'/>';
		septemberInsertMenNo *= 1;
		var octoberInsertMenNo = '<c:out value='${octoberInsertMenNo}'/>';
		octoberInsertMenNo *= 1;
		var novemberInsertMenNo = '<c:out value='${novemberInsertMenNo}'/>';
		novemberInsertMenNo *= 1; 
		var decemberInsertMenNo = '<c:out value='${decemberInsertMenNo}'/>';
		decemberInsertMenNo *= 1;
        
        var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
        // This will get the first returned node in the jQuery collection.
        var areaChart = new Chart(areaChartCanvas);

        var areaChartData = {
          labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
          datasets: [
    	  	{
              label: "합계",
              fillColor: "#BFFFB8", // 그래프 바탕
              strokeColor: "#BFFFB8", //위 쪽 그래프 구분선
              pointColor: "#1DDB16", //점
              pointStrokeColor: "#FFF", //점 테두리
              pointHighlightFill: "#BFFFB8", // 마우스 오버시 점
              pointHighlightStroke: "#1DDB16", // 마우스 오버시 점 테두리
              data: [januaryInsertNo
            	  , februaryInsertNo
            	  , marchInsertNo
            	  , aprilInsertNo
            	  , mayInsertNo
            	  , juneInsertNo
            	  , julyInsertNo
            	  , augustInsertNo
            	  , septemberInsertNo
            	  , octoberInsertNo
            	  , novemberInsertNo
            	  , decemberInsertNo]
            },
            {
           	  label: "남성",
              fillColor: "#C7C6FF", // 그래프 바탕
              strokeColor: "#C7C6FF", //그래프 구분선
              pointColor: "#3736FF", //점
              pointStrokeColor: "#FFF", //점 테두리
              pointHighlightFill: "#C7C6FF", // 마우스 오버시 점
              pointHighlightStroke: "#3736FF", // 마우스 오버시 점 테두리
              data: [januaryInsertMenNo
            	  , februaryInsertMenNo
            	  , marchInsertMenNo
            	  , aprilInsertMenNo
            	  , mayInsertMenNo
            	  , juneInsertMenNo
            	  , julyInsertMenNo
            	  , augustInsertMenNo
            	  , septemberInsertMenNo
            	  , octoberInsertMenNo
            	  , novemberInsertMenNo
            	  , decemberInsertMenNo]
            },
            {
              label: "여성",
              fillColor: "#FFC6C6", // 그래프 바탕
              strokeColor: "#FFC6C6", //위 쪽 그래프 구분선
              pointColor: "#FF4848", //점
              pointStrokeColor: "#FFF", //점 테두리
              pointHighlightFill: "#FFC6C6", // 마우스 오버시 점
              pointHighlightStroke: "#FF4848", // 마우스 오버시 점 테두리
              data: [januaryInsertNo-januaryInsertMenNo
            	  , februaryInsertNo-februaryInsertMenNo
            	  , marchInsertNo-marchInsertMenNo
            	  , aprilInsertNo-aprilInsertMenNo
            	  , mayInsertNo-mayInsertMenNo
            	  , juneInsertNo-juneInsertMenNo
            	  , julyInsertNo-julyInsertMenNo
            	  , augustInsertNo-augustInsertMenNo
            	  , septemberInsertNo-septemberInsertMenNo
            	  , octoberInsertNo-octoberInsertMenNo
            	  , novemberInsertNo-novemberInsertMenNo
            	  , decemberInsertNo-decemberInsertMenNo]
            }
          ]
        };

        var areaChartOptions = {
		  showLabel: true,
          //Boolean - 가로 세로 값
          showScale: true,
          //Boolean - 가로 세로 격자 눈금 
          scaleShowGridLines: false,
          //String - Colour of the grid lines
          scaleGridLineColor: "4B0000",
          //Number - Width of the grid lines
          scaleGridLineWidth: 0,
          //Boolean - Whether to show horizontal lines (except X axis)
          scaleShowHorizontalLines: true,
          //Boolean - Whether to show vertical lines (except Y axis)
          scaleShowVerticalLines: true,
          //Boolean - Whether the line is curved between points
          bezierCurve: true, // 굴곡 줄래? 말래?
          //Number - 그래프 굴곡 표현도
          bezierCurveTension: 0.3, 
          //Boolean - 값 마다 점 표시
          pointDot: true, 
          //Number - 점 크기
          pointDotRadius: 4, 
          //Number - 점 테두리
          pointDotStrokeWidth: 1,
          //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
          pointHitDetectionRadius: 20,
          //Boolean - Whether to show a stroke for datasets
          datasetStroke: false,
          //Number - 그래프 선 굵기
          datasetStrokeWidth: 3,
          //Boolean - 그래프 배경색
          datasetFill: false,
          //Boolean - 그래프 확대?
          maintainAspectRatio: false,
          //Boolean - whether to make the chart responsive to window resizing
          responsive: true
        };

        //Create the line chart
        areaChart.Line(areaChartData, areaChartOptions);

      });
    </script>
  </body>
</html>
