<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/head/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<c:import url="../module/left.jsp"/>
	<!-- top column -->	
	<c:import url="../module/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container row" style="min-height: 700px;">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">Dashboard <small>(${today})</small></h2>
					<hr>
					<!-- main start -->
					
					<div id="container" style="width: 70%;">
				      <canvas id="canvas2"></canvas>
				   	</div>
					
					<!-- main end -->
				</div>
				
				<c:import url="../module/footer.jsp"/>
			</div>
		</div>
	</div>

	<!-- JS -->
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/jquery-1.11.2.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/bootstrap-filestyle.min.js"></script>
	<!-- Templatemo Script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/head/js/templatemo-script.js"></script>
	<!-- ChartJS 상위버젼 -->
    <script src="${pageContext.request.contextPath}/resources/chartjs/Chart.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/resources/chartjs/utils.js"></script>
    
    <script>
        // 가로 바 차트
        var color = Chart.helpers.color;
        var horizontalBarChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November"],
            datasets: [{
                label: '수입',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                borderWidth: 1,
                data: [20
                    , 21
                    , 22
                    , 32
                    , 15
                    , 55
                    , 23
                    
                ]
            }, {
                label: '지출',
                backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                data: [-23
                    , -45
                    , -22
                    , -16
                    , -22
                    , -23
                    , -15
                    
                ]
            }]

        };

       window.onload = function() {
            var ctx = document.getElementById("canvas2").getContext("2d");
            window.myHorizontalBar = new Chart(ctx, {
                type: 'horizontalBar',
                data: horizontalBarChartData,
                options: {
                    // Elements options apply to all of the options unless overridden in a dataset
                    // In this case, we are setting the border of each horizontal bar to be 2px wide
                    elements: {
                        rectangle: {
                            borderWidth: 2,
                        }
                    },
                    responsive: true,
                    legend: {
                        position: 'right',
                    },
                    title: {
                        display: true,
                        text: 'Chart.js Horizontal Bar Chart'
                    }
                }
            });

        };

    </script>
    
</body>
</html>
					