<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
    #footer-section {
        background-color: #f8f9fa;
        color: #333;
        padding: 40px 0;
        font-family: 'Pretendard-Regular';
    }
    
    .inner {
        display: flex;
        flex-wrap: wrap;
        max-width: 1200px;
        margin: 0 auto;
        justify-content: space-between;
    }
    
    .footer-logo {
        flex: 0 0 200px;
        margin-bottom: 20px;
        margin-right:150px;
    }
    
    #footer-logo {
        width: 200px;
        height: 200px;
    }
    
    .footer-column {
        flex: 1;
        margin: 0 15px 20px;
        min-width: 200px;
    }
    
    .footer-column h3 {
        color: black;
        border-bottom: 2px solid skyblue;
        padding-bottom: 10px;
        font-size: 25px;
        font-weight:bold;
    }
    
     .footer-column h4 {
     	margin-left:70px;
       	margin-bottom:30px;
       	margin-top:30px
    }


    .footer-column p {
    	margin:0;
    	text-decoration:underline;
    }
    
   	.footer-column h6 {
	   	font-size:18px;
	   	white-space: nowrap;
		margin-bottom:20px;
       	margin-top:20px
	   	
    }
    
    .footer-bottom {
        width: 100%;
        text-align: center;
        margin-top: 30px;
        padding-top: 20px;
        border-top: 1px solid #ddd;
        font-size: 20px;
        color: #777;
    }
    
</style>
</head>
<body>
    <div id="footer-section">
        <div class="inner">
            <div class="footer-logo">
                <a href="${ contextPath }/home.do"><img src="resources/image/newLogo.png" alt="로고" id="footer-logo"></a>
            </div>
            <div class="footer-column">
                <h3>Project</h3>
                <p>Title</p>
                <h5>HomeWork</h5> 
                <p>Tell</p>              
                <h5>02-6959-2159</h5>
                <p>Address</p>
                <h5>서울특별시 중구 남대문로 120</h5>
            </div>
            <div class="footer-column">
                <h3>Team Member</h3>
                <h4>김종규</h4>               
                <h4>이재영</h4>
                <h4>김기룡</h4>  
            </div>
            <div class="footer-column">
               <h3>Project Info</h3>
			   <h6>KH정보교육원 JAVA개발자 양성 과정</h6>
			   <h6>Semi Project</h6>
			   <h6>2024.07.04 - 2024.07.19</h6>
			   <h6>Java, Spring, Oracle, JavaScript</h6>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 HomeWork. All rights reserved.</p>
        </div>             
    </div>
</body>
</html>