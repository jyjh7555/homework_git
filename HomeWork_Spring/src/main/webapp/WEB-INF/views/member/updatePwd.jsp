<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
  		margin:0;
	}
	
	#pwdH2{
		color:black;
	}
	em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}

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
	    font-family: 'GowunBatang-Regular';
	    
	}
	
	#voulnteer2 {
		height: 200px;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div class="container w-100 mt-5 d-flex justify-content-center">
		<main>
				<div class="col-md-6 d-flex justify-content-center w-100">
					<div class="h-100 w-100 p-5 bg-light ">
						<form action="${ contextPath }/updatePwd.me" method="post">
							<h2 id="pwdH2">비밀번호 변경</h2>
							<div class="col-12">
								<label for="currentPwd" class="form-label">현재 비밀번호</label>
								<input type="password" class="form-control" id="currentPwd" name="currentPwd" required>
							</div>
							<br>
							<div class="col-12">
								<label for="newPwd" class="form-label">변경할 비밀번호</label>
								<input type="password" class="form-control" id="newPwd" name="newPwd" required>
							</div>
							<br>
							<div class="col-12">
								<label for="newPwdConfirm" class="form-label">변경할 비밀번호 확인</label>
								<input type="password" class="form-control" id="newPwdConfirm" required>
							</div>
							<br>
							<button class="btn btn-outline-secondary">UPDATE MY PWD</button>
						</form>
					</div>
				</div>
		</main>

	</div>
	
	<div id="footer">
			<jsp:include page="../common/footer.jsp"/>
	</div>	
	<div id="fixedBtn">
 		<jsp:include page="../common/fixedBtn.jsp"/>
 	</div>	
	
	<script>
		window.onload = () => {
			const loginUser = '${loginUser}';
			if(loginUser == ''){
				alert('로그인 후 이용해주세요');
				location.href = '${contextPath}/loginView.me';
			}
		}
	</script>