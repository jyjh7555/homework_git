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
   font-size: 30px;
   }
   h2>em {
   color: white;
   text-decoration: none;
   font-size:16px;
   
   }
   
   #top {
        text-align: center;
        padding: 20px;
        height:100px;
      
    }
    
 
</style>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope = "application"></c:set>
	<div id="top">
		 <h2> HOME WORK <br>
		<em>기적을 짓는 시간과 땀의 헌신</em>
		</h2>
		
	</div>
</body>
</html>