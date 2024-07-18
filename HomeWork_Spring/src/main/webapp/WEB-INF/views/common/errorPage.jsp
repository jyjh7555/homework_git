<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    
    <title>404 Error - Home Work</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }
        .error-container {
            max-width: 600px;
            margin: auto;
        }
        .error-container img {
            width: 150px;
            height: auto;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons a {
            text-decoration: none;
            padding: 10px 20px;
            margin: 5px;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
        }
        .buttons a.back {
            background-color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="image-placeholder">
            <img src="${contextPath}/resources/image/newLogo.png" alt="Error Image">
        </div>
        <h1>정상 동작하지 못했습니다.</h1>
        <p id="errorMSG"></p>
        
        
        <div class="buttons">
            <a href="${contextPath }/home.do" class="main">메인으로</a>
            <a href="javascript:history.back()" class="back">BACK</a>
        </div>
    </div>
    <script>
    	const errorMSG = "${ requestScope['javax.servlet.error.message']}";
    	document.getElementById('errorMSG').innerText = errorMSG.split(":")[1];
    </script>
</body>
</html>
