<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
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
	
	.custom-form-control {
            background-color: #f0f8ff; /* 배경색 변경 */
            }
	
	.custom-form-control:focus {
            border-color: ksyblue; /* 포커스 시 테두리 색상 변경 */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* 포커스 시 그림자 추가 */
            }


</style>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<body>


	<div id=topAndNavbar>
 		<div id="navbar-section2" onmouseover="changeBackground()" onmouseout="resetBackground()">
	        <jsp:include page="../common/navbar.jsp" />
	    </div>    
	    <div id="top-section">
	        <jsp:include page="../common/top.jsp" />
	    </div>
 	</div>
	<div id="voulnteer2">
		<jsp:include page="../common/volunteer.jsp"/>
	</div>	



	
	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3 " >
		<div class="d-flex flex-column justify-content-center mb-3 border border-5 w-50 mt-3 ">
			
	        <label> 회원가입 할거야 기다려</label>
	        <label>ID</label><input class="form-control w-50 m-4" type="text" placeholder="ID">
	        <input class="custum-form-control" type="password" placeholder="PW">
	        <input class="form-control" type="text" placeholder="이름">
	        <input class="form-control" type="number" placeholder="주민등록 번호">
	        <input class="form-control" type="text" placeholder="이메일">
	        <input class="form-control" type="text" placeholder="주소">
	        <input class="form-control" type="number" placeholder="번호">
	        <input class="form-control" type="number" placeholder="휴대폰 번호">
	        <button onclick="showPage('main-page')">완료</button>
	        <button onclick="showPage('main-page')">처음으로</button>
		</div>	        
	</div>
	
	
	
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>	
	
</body>
</html>