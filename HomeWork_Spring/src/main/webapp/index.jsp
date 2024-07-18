<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="UTF-8">
<title>Home Work</title>
<meta charset="utf-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 <script src="https://kit.fontawesome.com/42f6eafec7.js" crossorigin="anonymous"></script>
<style>
	body {
		background-image:linear-gradient(
				        rgba(0, 0, 0, 0.5),
				        rgba(0, 0, 0, 0.5)
				      )
				      ,url('resources/image/topImage.png');
	    background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    margin:0;
	    font-family: 'GowunBatang-Regular';
	    font-weight:bold;
	}
	
	@font-face {
	    font-family: 'GowunBatang-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunBatang-Regular.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
		
	@font-face {
	    font-family: 'SF_HambakSnow';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/SF_HambakSnow.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	.fade-in {
    	transition: opacity 2s ease-in-out;
	}
	
	.fade-in2 {
    	transition: opacity 2s ease-in-out;
    	font-size:50px;
    	color:white;
	}
	
	
</style>
</head>
<body class="d-flex h-100 text-center text-bg-dark">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<main class="px-3 mt-5  fade-in" style="opacity: 0;">
    		<a href="${ pageContext.servletContext.contextPath }/home.do"><img style="filter:invert(1);" src="resources/image/newLogo.png"></a>	
		</main>
		
	    <a href="${ pageContext.servletContext.contextPath }/home.do" class="text-decoration-none">
      		 <h1 class="fade-in2" style="opacity: 0;">기적을 짓는 시간과 땀의 헌신</h1>
	    </a>
		
	</div>
	
	<script>
		document.addEventListener('DOMContentLoaded', function() {
		    setTimeout(function() {
		        var elements = document.querySelectorAll('.fade-in');
		        elements.forEach(function(element) {
		            element.style.opacity = '1';
		        });
		    }, 500); // 2000ms (2초) 후에 나타나기 시작
		});
		
		document.addEventListener('DOMContentLoaded', function() {
		    setTimeout(function() {
		        var elements = document.querySelectorAll('.fade-in2');
		        elements.forEach(function(element) {
		            element.style.opacity = '1';
		        });
		    }, 1500); // 2000ms (2초) 후에 나타나기 시작
		});
	</script>
</body>
</html>