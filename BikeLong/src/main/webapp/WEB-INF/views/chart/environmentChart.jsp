<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>


<title>Home</title>
<script type="text/javascript">
$(function(){
	
	<c:if test="${ not empty environments }">
	
	
	var temperature = [  
		  <c:forEach var="data" items="${environments}">
		            [${data.time},${data.temperature}],
		  </c:forEach>
		];
	
	var humidity = [  
		  <c:forEach var="data" items="${environments}">
		            [${data.time},${data.humidity}],
		  </c:forEach>
		];
	
	var dust = [  
		  <c:forEach var="data" items="${environments}">
		            [${data.time},${data.dust}],
		  </c:forEach>
		];
	
    var plot1 = $.jqplot('chart1', [temperature,humidity], {
    	animate: true,
    	title : '- 환경 정보 -',
        axes:{
        	xaxis:{
        		label:'시간', 
        		tickRenderer:$.jqplot.CanvasAxisTickRenderer,
        		min : 0, // 최소값
        		max : 24,  // 최대값
        		numberTicks : 25, // 인위적으로 축을 나누는 개수
        		tickOptions:{ fontString : '%d',angle: -30 },            
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
        	  color : '#ff6666', //Line Color
        	  label : '온도', // Line Label (Legend 설정시 표시되는 이름)
        	  lineWidth : 4, // Line 굵기
        	  highlighter:  {formatString: 
	           	'<table class="jqplot-highlighter">\
                  <tr><td><font size="2px" color="black">시간 : %02d 시</font></td></tr>\
                  <tr><td><font size="2px" color="#ff6666">온도 :%d °C</font></td></tr>\
                </table>'}
        	  },
        	  { 
           	  color : '#809fff',
           	  label : '습도',
           	  lineWidth : 4,
           	  highlighter: {
           		  formatString: 
	           		'<table class="jqplot-highlighter">\
	                  <tr><td><font size="2px" color="black">시간 : %02d 시</font></td></tr>\
	                  <tr><td><font size="2px" color="#809fff">습도 :%d %</font></td></tr>\
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
    
    var plot2 = $.jqplot('chart2', [dust], {
    	animate: true,
    	title : '- 미세먼지 정보 -',
        axes:{
        	xaxis:{
        		label:'시간', 
        		//tickRenderer:$.jqplot.CanvasAxisTickRenderer,
        		min : 0, // 최소값
        		max : 24,  // 최대값
        		numberTicks : 25, // 인위적으로 축을 나누는 개수
        		tickOptions:{ fontString : '%d',angle: -30 },            
        	}, 
            yaxis:{
        		min : 0, 
        		max : 0.15, 
        		numberTicks : 11, // 인위적으로 축을 나누는 개수
        		//tickRenderer:$.jqplot.CanvasAxisTickRenderer,
            	tickOptions:{ fontString : '%f' },
            	label:'측정치'
           }          
        },
        series : [  
        	  { 
        	  color : '#ffe066', //Line Color
        	  label : '미세먼지', // Line Label (Legend 설정시 표시되는 이름)
        	  lineWidth : 4, // Line 굵기
        	  highlighter:  {formatString: 
	           	'<table class="jqplot-highlighter">\
                  <tr><td><font size="3px" color="black">시간 : %02d 시</font></td></tr>\
                  <tr><td><font size="3px" color="#663300">미세먼지 :%.5f µg</font></td></tr>\
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
    
    </c:if>
});
</script>
</head>
<body>
<div class="col-md-12">
	<div id="chart1" ></div>
	<br/>
	<div id="chart2" ></div>
</div>
</body>
</html>
