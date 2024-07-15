<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	   h2{
		   color: white;
		   text-decoration: none;
		   font-size: 100px;
		 }
	   em {
		   color: white;
		   text-decoration: none;
		   font-size:30px;
		   font-family:GowunBatang-Regular;
	   
	   }
	   
	   #top {
	        text-align: center;
	        padding: 20px;
	        height:100px;
	        font-family:GowunBatang-Regular;
	      
	    }
	    
	    @font-face {
    font-family: 'GowunBatang-Regular';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunBatang-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
    
 
</style>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope = "application"></c:set>
	<div id="top">
		 <h2><b>HOME WORK</b></h2> 
		 <br>
		 <em>기적을 짓는 시간과 땀의 헌신</em>
	</div>
</body>
</html>