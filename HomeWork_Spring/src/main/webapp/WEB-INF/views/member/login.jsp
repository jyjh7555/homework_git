<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login System</title>
    <style>
    
    	#topAndNavbar {
		background-image:linear-gradient(
	        rgba(0, 0, 0, 0.2),
	        rgba(0, 0, 0, 0.2)
	      )
	      ,url('resources/image/topImage.png');
	    background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    transition: background-color 0.5s ease;
	}
		#voulnteer2 {
			height: 200px;
		}
	
  
        .container {
            width: 1200px;
            max-width: 1200px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            border:8px solid #E3E3E3;
            /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
        }
        .container input[type="text"], .container input[type="password"], .container input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #cccccc;
        }
        .container button, .container a {
            display: block;
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            text-align: center;
            background-color: #007bff;
            color: #E3E3E3;
            border: none;
            border-radius: 4px;
            text-decoration: none;
        }
        .container button:hover, .container a:hover {
            background-color: #0056b3;
        }
        .qr-code {
            text-align: center;
        }
    </style>
</head>
<body>
	<div id=topAndNavbar>
 		<div id="navbar-section2" onmouseover="changeBackground()" onmouseout="resetBackground()">
	        <jsp:include page="../common/navbar.jsp" />
	    </div>    
	    <div id="top-section">
	        <jsp:include page="../common/top.jsp" />
	    </div>
	    <div id="voulnteer2">
			<jsp:include page="../common/volunteer.jsp"/>
		</div>	
 	</div>
	

	<div align="center">
	    <div class="container mt-5" id="main-page">
	        <h2>로그인</h2>
	        <form action="loginCheck.me">
		        <input type="text" name="memberId" id="id" style="width:400px" placeholder="아이디"><br><br>
		        <input type="password" name="memberPwd" style="width:400px" id="login-password" placeholder="패스워드">
		        <button style="width:400px">로그인</button>
	        </form>
	        <button style="width:400px" onclick="showPage('qr-code-page')">QR코드 로그인</button>
	        <button style="width:400px" onclick="showPage('signup-page')">회원가입</button>
	        <button style="width:400px" onclick="findId()">아이디 찾기</button>
	        <button style="width:400px" onclick="findPwd()">비밀번호 찾기</button>
	    </div>
	    
	    <div class="container qr-code" id="qr-code-page" style="display:none;">
	        <h2>QR코드 로그인</h2>
	        <div>
	            <img src="https://via.placeholder.com/150" alt="QR 코드" id="qr-code">
	        </div>
	        <button onclick="showPage('main-page')">로그인 상태 유지</button>
	        <p>남은 시간 : 05:00</p>
	    </div>
	
	    <div class="container" id="signup-page" style="display:none;">
	        <h2>신규 가입</h2>
	        <input type="text" placeholder="ID">
	        <input type="password" placeholder="PW">
	        <input type="text" placeholder="이름">
	        <input type="number" placeholder="주민등록 번호">
	        <input type="text" placeholder="이메일">
	        <input type="text" placeholder="주소">
	        <input type="number" placeholder="번호">
	        <input type="number" placeholder="휴대폰 번호">
	        <button onclick="showPage('main-page')">완료</button>
	        <button onclick="showPage('main-page')">처음으로</button>
	        
	    </div>
	</div>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 		</div>	
	
    <script>
        function showPage(pageId) {
            const pages = document.querySelectorAll('.container');
            pages.forEach(page => page.style.display = 'none');
            document.getElementById(pageId).style.display = 'block';
        }

        function login() {
            const id = document.getElementById('login-id').value;
            const password = document.getElementById('login-password').value;
            if (id !== 'homework') {
                alert('아이디가 틀렸습니다. 다시 입력해 주세요');
            } else if (password !== '@homework1') {
                alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
            } else {
                alert('로그인 성공');
            }
        }

        function findId(){
        	location.href="findId.me";
        }
        
        function findPwd(){
        	location.href="findPwd.me";
        }
        </script>
  </body>
  </html>

