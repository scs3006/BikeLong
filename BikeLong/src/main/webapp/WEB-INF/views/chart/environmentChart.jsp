<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/bikelong/resources/jqplot/jquery.jqplot.js"></script>
<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.barRenderer.js"></script>
<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.highlighter.js"></script>
<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.cursor.js"></script>
<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.pointLabels.js"></script>
<link rel="stylesheet" type="text/css" href="/bikelong/resources/jqplot/jquery.jqplot.css" />

<title>Home</title>
<script type="text/javascript">
$(document).ready(function(){
	var temperature = [[0,37.5], [1,35.7], [2,31.6], [3,28.7], [4,30.5], [5,32.9], [6,36.9], [7,32.9], [8,38.9], [9,32.9], [10,42.9], [11,32.9], [12,22.9],
					   [13,32.9], [14,23.9], [15,32.9], [16,42.9], [17,32.9], [18,22.9], [19,32.9], [20,42.9], [21,32.9], [22,22.9], [23,32.9], [24,22.9]];
    var humidity = [[0,17.5], [1,15.7], [2,11.6], [3,18.7], [4,10.5], [5,12.9], [6,16.9], [7,12.9], [8,18.9], [9,12.9], [10,12.9], [11,12.9], [12,12.9],
		   [13,12.9], [14,13.9], [15,12.9], [16,42.9], [17,12.9], [18,12.9], [19,12.9], [20,12.9], [21,31.9], [22,21.9], [23,32.1], [24,22.1]];
    
    var plot1 = $.jqplot('chart1', [temperature,humidity], {
    	animate: true,
    	title : '<< 환경 정보 >>',
        axes:{
        	xaxis:{
        		label:'시간', 
        		tickRenderer:$.jqplot.CanvasAxisTickRenderer,
        		min : 0, // 최소값
        		max : 24,  // 최대값
        		numberTicks : 25, // 인위적으로 축을 나누는 개수
        		tickOptions:{ fontString : '%d',angle: -30 },            
        		labelOptions:{fontFamily:'Helvetica', fontSize: '14pt' },
        		labelRenderer: $.jqplot.CanvasAxisLabelRenderer
        	}, 
            yaxis:{
        		min : 0, 
        		max : 60, 
        		numberTicks : 11, // 인위적으로 축을 나누는 개수
            	tickOptions:{ fontString : '%d' },
            	label:'측정치'
           }          
        },
        series : [ // Series 옵션  
        	  { //첫번째 Line에 관한 Series 옵션
        	  color : 'blue', //Line Color
        	  label : '온도', // Line Label (Legend 설정시 표시되는 이름)
        	  lineWidth : 4, // Line 굵기
        	  highlighter:  {formatString: 
	           	'<table class="jqplot-highlighter">\
                  <tr><td><font size="3px" color="black">시간 : %02d 시</font></td></tr>\
                  <tr><td><font size="3px" color="black">습도 :%d °C</font></td></tr>\
                </table>'}
        	  },
        	  { 
           	  color : 'red',
           	  label : '습도',
           	  lineWidth : 4,
           	  highlighter: {
           		  formatString: 
	           		'<table class="jqplot-highlighter">\
	                  <tr><td><font size="3px" color="black">시간 : %02d 시</font></td></tr>\
	                  <tr><td><font size="3px" color="black">습도 :%d %</font></td></tr>\
	                </table>'}
        	  }
           	 ],
        	legend : { // Legend 옵션  
        	    renderer : $.jqplot.EnhancedLegendRenderer,
        	    show : true, // Legend 표시 유무
        	    placement : 'inside', // Legend 위치 (Default값은 inside)
        	    textColor : 'black',  // Legend 내부 Text Color
        	    rowSpacing : '0px',  // Legend 들간의 사이 공간
        	    location : 'ne'  // Legend 위치 (e,w,s,n)(동,서,남,북) 조합가능
        	},
        	highlighter: {show: true}
	}); 
});
</script>
</head>
<body>
<div class="col-md-12">
	<div id="chart1" ></div>
	<br/><br/>
	<div id="chart2" ></div>
</div>
</body>
</html>
