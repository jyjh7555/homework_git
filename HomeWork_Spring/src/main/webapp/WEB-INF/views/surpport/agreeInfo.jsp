<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ contextPath }/CSS/sponsorService.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="popup">
        <div class="popup-header">
            <h2 class="popup-title">[필수] 개인정보수집이용 동의
            <button class="popup-close-button" onclick="closePopup();">X</button>
            </h2>
        </div>
        <hr>
        <div class="popup-content">
            <p>HomeWork 이용약관</p>
            <p>HomeWork 개인정보처리방침</p>
        </div>
    </div>
    <script>
    function closePopup() {
        window.close();
    }
    function agreeTerms() {
        opener.document.getElementById("agreeCheckbox").checked = true;
        window.close();
    }
    </script>
</body>
</html>