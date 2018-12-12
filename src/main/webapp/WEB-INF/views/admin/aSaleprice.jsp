<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript" >
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['월', '강아지', '고양이', '평균'],
					['2018/01',  165,      938,         614.6],
					['2018/02',  135,      1120,          662],
					['2018/03',  1570,      1167,          623],
					['2018/04',  1390,      1110,        699.4],
					['2018/05',  136,      691,         569.6],
					['2018/06',  165,      938,         614.6],
					['2018/07',  135,      1120,          682],
					['2018/08',  1270,      1167,          623],
					['2018/09',  1390,      1810,        609.4],
					['2018/10',  506,      691,         579.6],
					['2018/11',  1890,      1110,        609.4],
					['2018/12',  736,      691,         529.6]
				]);
			var options = {
					title : '월별 매출 현황',
					vAxis: {title: '매출액'},
					hAxis: {title: '달 별'}, 
					seriesType: 'bars',
					series: {
			            0: { color: '#B45F04' },
			            1: { color: '#c784de' },
			            2: { color: '#f1ca3a', type: 'line' }
			          }
				};
			
			var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>
	
</head>
<body>
	<div id="chart_div" style="width:1100px; height: 500px; vertical-align:middle;"></div>
</body>
</html>

    
<%@include file="include/footer.jsp" %>
 
 
  