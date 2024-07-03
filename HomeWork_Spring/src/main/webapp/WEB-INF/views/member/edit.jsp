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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
  		margin:0;
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
	<div class="container border border-5 w-50 mt-5">
		<main>
			<div align="center"><label style="margin:20px; margin-left:15px; font-size:48px;"><b>회원정보 수정</b> </label></div>
			<div style="margin-left: 350px; margin-right: 350px;">
				<form class="needs-validation" action="${ contextPath }/updateMember.me" method="POST">
					<div class="row g-3">
						<div class="col-12 form-floating mb-3">
							<input type="text" class="form-control" id="id" name="id" readonly value="${ loginUser.memberId }">
							<label for="id" class="form-label">ID</label>
						</div>
												
						<div class="col-12 form-floating mb-3">	
							<input type="text" class="form-control" id="name" name="name" required value="${ loginUser.memberName }">
							<label for="name" class="form-label">NAME</label>
						</div>
						
						<div class="col-12 form-floating mb-3">
							<input type="text" class="form-control" id="nickName" name="nickName" required value="${ loginUser.nickName }">
							<label for="nickName" class="form-label">NICKNAME</label>
						</div>

						<div class="col-12">
							<label for="emailId" class="form-label">EMAIL</label>
							<c:set var="emailId" value="${ fn:split(loginUser.email, '@')[0] }"/>
							<c:set var="emailDomain" value="${ fn:split(loginUser.email, '@')[1] }"/>
							<div class="input-group">
								<input type="text" class="form-control" id="emailId" name="emailId" value="${ emailId }"/>
								<span class="input-group-text">@</span>
								<select name="emailDomain" style="width: 280px;">
									<option <c:if test="${ emailDomain eq 'naver.com' }">selected</c:if>>naver.com</option>
									<option <c:if test="${ emailDomain eq 'gmail.com' }">selected</c:if>>gmail.com</option>
									<option <c:if test="${ emailDomain eq 'nate.com' }">selected</c:if>>nate.com</option>
									<option <c:if test="${ emailDomain eq 'hanmail.net' }">selected</c:if>>hanmail.net</option>
								</select>
							</div>
						</div>
						
						<div class="col-12">
							<label class="form-label">GENDER</label><br>
							<input type="radio" id="man" name="gender" value="M" <c:if test="${ loginUser.gender =='M' }">checked</c:if>> MAN &nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" id="woman" name="gender" value="F" <c:if test="${ loginUser.gender =='F' }">checked</c:if>> WOMAN
						</div>
						
						<div class="col-12">
							<label for="age" class="form-label">AGE</label>
							<input type="number" class="form-control" id="age" name="age" min="0" max="100"  value="${ loginUser.age }">
						</div>

						<div class="col-12">
							<label for="phone" class="form-label">PHONE</label>
							<input class="form-control m-4 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" value="010" readonly >-
				        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" placeholder="0000">-
				        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" placeholder="9999">
						</div>
						
						<div class="col-12">
							<label for="address" class="form-label">ADDRESS</label>
							<input type="text" class="form-control" id="address" name="address" value="${ loginUser.address }">
						</div>
						
						<br><br><br><br><br>
						
						<button class="w-100 btn btn-primary btn-lg mb-5">수정하기</button>
					</div>
				</form>
			</div>
		</main>

	</div>
	
	<div id="footer">
			<jsp:include page="../common/footer.jsp"/>
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