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
	
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
	.container {
		font-family: 'Pretendard-Regular';
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
	<div class="container border border-2 w-50 mt-5 d-flex justify-content-center bg-light">
		<main>
			<div class="d-flex justify-content-center">
				<label style="margin:20px; margin-left:15px; font-size:36px;"><b>회원정보 수정</b></label>
			</div>
			<div class="d-flex justify-content-center">
				<form  class="needs-validation w-75" action="${ contextPath }/updateMember.me" method="POST">
					<div class="row g-2">
						<div class="row g-2 d-flex justify-content-start">
							<div class="col-12 form-floating mb-3">
								<input type="text" class="form-control" id="id" name="id" readonly value="${ loginUser.memberId }">
								<label for="id" class="form-label">ID</label>
							</div>
						</div>
						
						<div class="row g-2 d-flex justify-content-start" >
							<div class="col-12 form-floating mb-3">	
								<input type="text" class="form-control" id="name" name="name" required value="${ loginUser.memberName }">
								<label for="name" class="form-label">NAME</label>
							</div>
						</div>						
						
						<div class="row g-2 d-flex justify-content-start">
							<div class="col-12 form-floating mb-3">
								<input type="text" class="form-control" id="nickName" name="nickName" required value="${ loginUser.nickName }">
								<label for="nickName" class="form-label">NICKNAME</label>
							</div>
						</div>			
						

						<div class="row g-2 d-flex justify-content-start">
							<label for="emailId" class="form-label fw-bold">EMAIL</label>
							<c:set var="emailId" value="${ fn:split(loginUser.email, '@')[0] }"/>
							<c:set var="emailDomain" value="${ fn:split(loginUser.email, '@')[1] }"/>
							<div class="input-group">
								<input type="text" class="form-control col-md-2" id="emailId" name="emailId" value="${ emailId }"/>
								<span class="input-group-text">@</span>
								<select name="emailDomain" style="width: 280px;">
									<option <c:if test="${ emailDomain eq 'naver.com' }">selected</c:if>>naver.com</option>
									<option <c:if test="${ emailDomain eq 'gmail.com' }">selected</c:if>>gmail.com</option>
									<option <c:if test="${ emailDomain eq 'nate.com' }">selected</c:if>>nate.com</option>
									<option <c:if test="${ emailDomain eq 'hanmail.net' }">selected</c:if>>hanmail.net</option>
								</select>
							</div>
						</div>
						<div class="row g-2 d-flex justify-content-start">
							<div class="col-12">
								<label class="form-label fw-bold">GENDER</label><br>
								<input type="radio" id="man" name="gender" value="M" <c:if test="${ loginUser.gender =='M' }">checked</c:if>> MAN &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" id="woman" name="gender" value="F" <c:if test="${ loginUser.gender =='F' }">checked</c:if>> WOMAN
							</div>
						</div>
						
						<div class="row g-2 d-flex justify-content-start">
							<div class="col col-xl-2">
								<label for="age" class="form-label fw-bold">AGE</label>
								<input type="number" class="form-control" id="age" name="age" min="0" max="100"  value="${ loginUser.age }">
							</div>
						</div>
						

						<div class="row g-2 d-flex justify-content-start">
							<div>
								<label class="fw-bold">휴대폰 번호 입력</label><br>
							</div>
				        	<div class="d-flex align-items-center">
							  <input class="form-control me-2" style="width:100px;" type="text" name="phone1" value="010" readonly>
							  <span class="me-2">-</span>
							  <input class="form-control me-2" style="width:100px;" type="text" name="phone2" value="${fn:split(loginUser.phone, '-')[1]}" maxlength="4" placeholder="0000">
							  <span class="me-2">-</span>
							  <input class="form-control" style="width:100px;" type="text" name="phone3" value="${fn:split(loginUser.phone, '-')[2]}" maxlength="4" placeholder="9999">
							</div>
				        </div>
						
						<div class="row g-2">
							<div class=col-12>
						        <input name="address" class="form-control w-25 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_postcode" value="${fn:split(loginUser.address, ',')[0]}" placeholder="우편번호" readonly>
						        <input class="btn btn-outline-secondary btn-sm ms-2" type="button" class="btn btn-outline-secondary btn-sm" style="display:inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						        <input name="address" class="form-control w-75 mt-1 mb-1" type="text"  id="sample6_address" placeholder="주소" value="${fn:split(loginUser.address, ',')[1]}" readonly>
								<input name="address" class="form-control w-75 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_detailAddress" value="${fn:split(loginUser.address, ',')[2]}" placeholder="상세주소">
								
					        </div>
						</div>
						
						<div class="d-flex justify-content-center mt-5"><button class="w-100 btn btn-outline-success mb-5 fs-5">수정하기</button></div>
						
					</div>
				</form>
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
		
		
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    //document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
		
	</script>