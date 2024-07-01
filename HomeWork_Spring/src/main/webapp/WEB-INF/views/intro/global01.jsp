<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> 
		.wave-container {
	  width: 100px;
	  height: 100px;
	  position: relative;
	  overflow: hidden;
	}
	
	.wave {
	  position: absolute;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  background: linear-gradient(90deg, #6cc0ff, #3a8dff);
	  animation: wave-animation 1s linear infinite;
	  transform: translateY(100%);
	}


</style>
</head>
<body>
	  <div class="wave-container">
  		  <div class="wave">어딨니?</div>
  		  <h1>어이어이</h1>
  	  </div>
  	  
  	  <script>
		  	const waveContainer = document.querySelector('.wave-container');
		  	const wave = document.querySelector('.wave');
		
		  	waveContainer.addEventListener('mouseenter', () => {
		  	  wave.style.animationPlayState = 'running';
		  	});
		
		  	waveContainer.addEventListener('mouseleave', () => {
		  	  wave.style.animationPlayState = 'paused';
		  	});
		
		  	wave.style.animationPlayState = 'paused'; // 기본적으로 애니메이션을 멈춤 상태로 설정
		  	  
  	  </script>
</body>
</html>