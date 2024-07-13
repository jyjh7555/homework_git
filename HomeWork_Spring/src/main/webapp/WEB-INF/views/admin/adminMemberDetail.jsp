<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
    #topAndNavbar {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0.2),
            rgba(0, 0, 0, 0.2)
        ),
        url('resources/image/topImage.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        transition: background-color 0.5s ease;
    }
    
    #voulnteer2 {
        height: 200px;
    }
     .logo {
       display: flex;
       align-items: center;
   }
	.logo-container {
       width: 130px;
       height: 130px;
       background-image: inherit; 
       background-size: cover;
       background-position: center;
       position: relative;
       margin-bottom: 15px;
       margin-left:50px;
   }
   .logo-container img {
       width: 100%;
       height: 100%;
       object-fit: contain;
   }
	#topAndNavbar {
		background-image:linear-gradient(
	        rgba(0, 0, 0, 0.2),
	        rgba(0, 0, 0, 0.2)
	      )
	      ,url('image/topImage.png');
	    background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    transition: background-color 0.5s ease;
	}

	#container{display:flex; flex-wrap: wrap; width:100%;}
	table{
		text-align: center;
	}
	th {
        border-bottom: 1px solid black;
    }
	 .form-container {
            display: flex;
            justify-content: flex-end;
        }
     .hidden{display:none;}
     
     .custom-check-label {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  cursor: pointer;
}

.custom-check-input {
  appearance: none;
  position: relative;
  border: max(2px, 0.1em) solid gray;
  border-radius: 1.25em;
  width: 2.25em;
  height: 1.25em;
}

.custom-check-input::before {
  content: "";
  position: absolute;
  left: 0;
  width: 1em;
  height: 1em;
  border-radius: 50%;
  transform: scale(0.8);
  background-color: gray;
  transition: left 250ms linear;
}

.custom-check-input:checked::before {
  background-color: white;
  left: 1em;
}

.custom-check-input:checked {
  background-color: tomato;
  border-color: tomato;
}

.custom-check-input:checked::before {
  background-color: white;
  left: 1em;
}

.custom-check-input:checked {
  background-color: tomato;
  border-color: tomato;
}

.custom-check-input:checked::before {
  background-color: white;
  left: 1em;
}

.custom-check-input:checked {
  background-color: tomato;
  border-color: tomato;
}

.custom-check-input:enabled:hover {
  box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
}

.custom-check-input::before {
  content: "";
  position: absolute;
  left: 0;
  width: 1em;
  height: 1em;
  border-radius: 50%;
  transform: scale(0.8);
  background-color: gray;
  transition: left 250ms linear;
}
</style>
<title>관리자게시판</title>
</head>
<body>
	<div class="logo">
       <div class="logo-container">
           <a href="${ contextPath }"><img id="logo-image" src="resources/image/newLogo.png" alt="로고"></a>
           <button type="button" class="btn btn-outline-primary btn-lg" onclick="goBack()">관리자 홈</button>
        </div>
    </div>
	<h1 align="center"> 관리자페이지 </h1>
	<br>
	<h3 align="center">[회원 정보 관리]</h3>
    <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3">
        <div class="d-flex flex-column justify-content-center mb-3 border border-1 border-info w-50 mt-3" style="width:1400px;">
            <form class="needs-validation" action="${ contextPath }/adminUpdateMember.ad" method="POST">
					<div class="row g-3">
						<div class="col-12 form-floating mb-3">
							<label for="id" class="form-label">회원번호</label>
							<input type="text" class="form-control" id="memberNo" name="memberNo" value="${ m.memberNo }" readonly>
						</div>
						<div class="col-12 form-floating mb-3"> 
							<label for="id" class="form-label">아이디</label>
							<input type="text" class="form-control" id="memberId" name="memberId" value="${ m.memberId }" readonly>
						</div>
												
						<div class="col-12 form-floating mb-3">	
							<label for="name" class="form-label">이름</label>
							<input type="text" class="form-control" id="memberName" name="memberName" required value="${ m.memberName }" readonly>
						</div>
						
						<div class="col-12 form-floating mb-3">
							<label for="nickName" class="form-label">닉네임</label>
							<input type="text" class="form-control" id="nickName" name="nickName" required value="${ m.nickName }">
						</div>

						<div class="col-12">
							<label for="emailId" class="form-label">이메일</label>
							<c:set var="emailId" value="${ fn:split(m.email, '@')[0] }"/>
							<c:set var="emailDomain" value="${ fn:split(m.email, '@')[1] }"/>
							<div class="input-group">
								<input type="text" class="form-control" id="emailId" name="email" value="${ emailId }" readonly/>
								<span class="input-group-text">@</span>
								<input type="text" class="form-control" id="emailId" name="email" value="${ fn:split(m.email, '@')[1] }" readonly/>
								
							</div>
						</div>
						
						<div class="col-12">
							<label class="form-label">성별</label><br>
							<input type="radio" id="man" name="gender" value="M" readonly <c:if test="${ m.gender =='M' }">checked</c:if>> MAN &nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" id="woman" name="gender" value="F" readonly <c:if test="${ m.gender =='F' }">checked</c:if>> WOMAN
						</div>
						
						<div class="col-12">
							<label for="age" class="form-label">나이</label>
							<input type="text" class="form-control" id="age" name="age" min="0" max="100"  value="${ m.age }" readonly>
						</div>

						<div class="col-12">
							<label for="phone" class="form-label">전화번호</label><br>
							<input class="form-control m-4 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" value="010" readonly >-
				        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" value="${ fn:split(m.phone, '-')[1] }"/>-
				        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" value="${ fn:split(m.phone, '-')[2] }"/>
						</div>
						
						<div class="col-12">
							<label for="address" class="form-label">ADDRESS</label>
							<input type="text" class="form-control" id="address" name="address" value="${ m.address }" readonly>
						</div>
						
						<div class="col-12">
							<div class="row">
								<div class="col-12">
									<label for="activeYn" class="form-label">활동여부
									</label>
								</div>
							</div>
							<div class="col-12">
								<div class="row">
									<input class="custom-check-input" type="checkbox" id="statusYn" name="status"> &nbsp;
									<label class="custom-check-label align-middle" for="activeYn">활동중지 / 활동중</label>
								</div>
							</div>
						</div>
						
						<div class="col-12">
							<div class="row">
								<div class="col-12">
									<label for="activeYn" class="form-label">회원상태
									</label>
								</div>
							</div>
							<div class="col-12">
								<div class="row">
									<input class="custom-check-input" type="checkbox" id="adminYn" name="isAdmin"> &nbsp;
									<label class="custom-check-label align-middle" for="activeYn">사용자 / 관리자</label>
								</div>
							</div>
						</div>
						
						<br><br>
						<div class="col-12">
							<label for="pay" class="form-label" id="payList">
							후원
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-square-fill" viewBox="0 0 16 16">
  								<path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm4 4a.5.5 0 0 0-.374.832l4 4.5a.5.5 0 0 0 .748 0l4-4.5A.5.5 0 0 0 12 6z"/>
							</svg>
							</label><br>
							<table class="hidden table table-hover" id="payTable">
								<thead>
									<tr>
										<th width="80px">후원분야</th>
										<th width="80px">후원금액</th>
										<th width="130px">후원일자</th>
				          			</tr>
				          		</thead>
				         		<tbody> 
				         			<c:forEach items="${ pay }" var="p">
					          			<tr>
					          				<td>${ p.product }</td>
					          				<td>${ p.amount }</td>
					          				<td>${ p.payDate }</td>
				          			</c:forEach>
				          		</tbody>
				        	</table>
						</div>
			        	<div class="col-12">
						<label for="volunteer" class="form-label" id="volunteerList">
						봉사활동정보
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-square-fill" viewBox="0 0 16 16">
 								<path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm4 4a.5.5 0 0 0-.374.832l4 4.5a.5.5 0 0 0 .748 0l4-4.5A.5.5 0 0 0 12 6z"/>
						</svg>
						</label><br>
						<table class="hidden table table-hover" id="volunteerTable">
							<thead>
								<tr>
									<th width="20px">b boardType 국내해외 구분</th>
									<th width="40px">l location 지역</th>
									<th width="80px">v category</th>
									<th width="100px">v startTime~endTime 봉사기간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>b</td>
									<td>l</td>
									<td>v</td>
									<td>c</td>
								</tr>
							</tbody>
						</table>
	            <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" align="center">
	        		<button type="button" class ="btn btn-info m-5" style="width:150px; border-radius:16px;font-size:20px; background:" onclick="location.href='${contextPath}/adminMemberUpdate.ad'">수정하기</button>
				</div>
					</div>
				</div>
			</form>
        </div>
    </div>
    
    
	<script>
        window.onload = () => {
            const payList = document.getElementById('payList');
            payList.addEventListener('click', function() {
                document.getElementById('payTable').classList.toggle('hidden');
            });
            
            payList.addEventListener('mouseover', function() {
                payList.style.cursor = "pointer";
            });
            payList.addEventListener('mouseout', function() {
                payList.style.cursor = '';
            });
            
            const volunteerList = document.getElementById('volunteerList');
            volunteerList.addEventListener('click', function() {
                document.getElementById('volunteerTable').classList.toggle('hidden');
            });
            volunteerList.addEventListener('mouseover', function() {
                volunteerList.style.cursor = "pointer";
            });
            volunteerList.addEventListener('mouseout', function() {
                volunteerList.style.cursor = '';
            });

            var status = "${m.status}"; 
            var checkbox = document.getElementById('statusYn');
            checkbox.checked = status === 'Y'; 
            
            var isAdmin = "${m.isAdmin}"; 
            var adminCheckbox = document.getElementById('adminYn');
            adminCheckbox.checked = isAdmin === 'Y'; 
        }
        
        function goBack() {
            location.href="admin.me";
        }
    </script>
</body>
</html>
