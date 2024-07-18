<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#heart-container {
		  margin: 20px;
		  width: 120px;
		  height: 120px;
		  text-align:center;
		  background:skyblue;
		  border-radius: 50%;
		  position: fixed; /* 추가 */
		  bottom: 300px; /* 페이지 하단으로부터 20px */
		  right: 100px; /* 페이지 오른쪽으로부터 20px */
		  z-index: 1000; /* 다른 요소 위에 고정 */
	}
	
	#heart-container:hover {
		cursor:pointer;
	}
	#heart-icon {
	   width: 75px;
	   height: 75px;
	   margin-top:10px;
	  
	}
	#heart-text {
	  font-family: Arial, sans-serif;
	  font-weight: 500;
	  font-size: 20px;
	  font-weight:bold;
	  color:white;
	  
	}
		
</style>


</head>
<body>
	<div id="heart-container">
	  <svg id="heart-icon" xmlns="http://www.w3.org/2000/svg" version="1.1" x="0px" y="0px" viewBox="0 0 100 100">
	                  <path fill-opacity="0" stroke-width="1" stroke="#bbb" d="M81.495,13.923c-11.368-5.261-26.234-0.311-31.489,11.032C44.74,13.612,29.879,8.657,18.511,13.923  C6.402,19.539,0.613,33.883,10.175,50.804c6.792,12.04,18.826,21.111,39.831,37.379c20.993-16.268,33.033-25.344,39.819-37.379  C99.387,33.883,93.598,19.539,81.495,13.923z"/>
	                  <path id="heart-path" fill-opacity="0" stroke-width="3" stroke="#ED6A5A" d="M81.495,13.923c-11.368-5.261-26.234-0.311-31.489,11.032C44.74,13.612,29.879,8.657,18.511,13.923  C6.402,19.539,0.613,33.883,10.175,50.804c6.792,12.04,18.826,21.111,39.831,37.379c20.993-16.268,33.033-25.344,39.819-37.379  C99.387,33.883,93.598,19.539,81.495,13.923z"/>     
	  </svg>
	  <h2 id="heart-text">
	    후원하기
	  </h2>
	</div>	
    <script src="https://cdn.jsdelivr.net/npm/progressbar.js/dist/progressbar.min.js"></script>
	<script>
	  window.onload = () => {
		   	  var bar = new ProgressBar.Path('#heart-path', {
		   	  easing: 'easeInOut',
		   	  duration: 1400
		   	 });
		
		   	function animate() {
		   	  bar.set(0);
		   	  bar.animate(1.0, function() {
		   	    setTimeout(animate, 1000);  // 1초 후에 애니메이션을 다시 시작
		   	  });
		   	}
		
		   	animate();  // 첫 번째 애니메이션 시작
		   	
		   	const fixedBtn = document.getElementById("heart-container");
		   	
		   	fixedBtn.addEventListener('click',function(){
		   		
		   		location.href='${contextPath}/surpport.su';
		   	})
		  
	  }
	
	 
   	
   	
	</script>
</body>

</html>