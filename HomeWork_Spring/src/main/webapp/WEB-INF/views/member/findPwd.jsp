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
	
	.inline-btn {
		display:inline-block;
		}
	
	/* .custom-form-control:focus {
            border: 10px solid; 
            } */


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



	
	<div align="center" >
		<div class="row d-flex flex-column justify-content-center mb-3 border border-5 w-50 mt-3 " align="center">
			<form align="left" action="selectPwd.me" method="post" onsubmit="return checkForm()">
		        <label style="margin:25px; font-size:25px;"> 비밀번호찾기 </label>
		        <input class="form-control w-50 m-4" type="text" name="findId" id="findId" placeholder="아이디를 입력해주세요">
		        <input class="form-control w-50 m-4" type="text" name="findName" id="findName" placeholder="이름을 입력해주세요">
		        <input class="form-control w-50 m-4" type="text" name="findEmail" id="findEmail" placeholder="이메일을 입력해주세요">
		        <input class="form-control w-50 m-4" type="text" name="findPhone" id="findPhone" placeholder="휴대폰번호를 입력해주세요">
		        
		        <button type="submit" class="btn btn-secondary btn-lg w-50 m-4 btn-primary" >비밀번호 찾기</button>
	        </form>
		</div>	        
	</div>
	
	
	
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>	
	
	<script>
	 function checkForm() {
		 	var findId = document.getElementById("findId").value
	        var findName = document.getElementById("findName").value;
	        var findEmail = document.getElementById("findEmail").value;
	        var findPhone = document.getElementById("findPhone").value;

	        if (findId.trim() === ''|| findName.trim() === '' || findEmail.trim() === '' || findPhone.trim() === '') {
	            alert("모든 필드를 입력해주세요.");
	            return false;
	        }

	        return true; 
	    }
	
	
	</script>
	
</body>
</html>
