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
			<form align="left" action="${contextPath }/insertMember.me" method="post">
		        <label style="margin:25px; font-size:25px;"> 회원가입 글자는? </label>
		        <input class="form-control w-50 m-4" type="text" name="memberId" placeholder="아이디를 입력해주세요">
		        <input class="form-control w-50 m-4" type="password" name="memberPwd" placeholder="비밀번호를 입력해주세요">
	  			<div class="col-12 ml-4">
					<input class="form-check-input " style="margin-left:25px;"  type="radio"  name="gender" id="man" value="M">
		  			<label class="form-check-label " for="man">남자</label>
					<input class="form-check-input "  type="radio" name="gender" id="woman" value="F">
		  			<label class="form-check-label" for="woman">여자</label>  
				</div>
	
		        <input class="form-control w-50 m-4" type="text" placeholder="닉네임" name="nickName">
		        <div class="col-12">
		        	<label style="margin-left:25px; ">휴대폰 번호 입력</label><br>
		        	
		        	<input class="form-control m-4 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" placeholder="010">-
		        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" placeholder="0000">-
		        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" placeholder="9999">
		        </div>
		        <br>
		        <div class="col-12">
		        	<label style="margin-left:25px; ">이메일  입력</label><br>
		        	<input class="form-control mt-1 mb-1" style="margin-left:25px; margin-right:5px;width:20%; display:inline-block;" name="emailId"type="text" placeholder="이메일">@
		        	<input class="form-control mt-1 mb-1" style="width:26%; display:inline-block;" type="text" name="emailDomain" placeholder="">
		        	<select class="form-control mt-1 mb-1" style="width:20%; display:inline-block;" name="emailDomainHelp">
		        		<option>직접입력</option>
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>hanmail.net</option>
					</select>
		        </div>
		        <input type="date" class="form-control w-25 m-4" >
		        <input class="form-control w-50 m-4" type="text" name="address" placeholder="주소 입력">
		        <button class="btn btn-secondary btn-lg w-25 m-4 btn-primary">가입하기</button>
	        </form>
		</div>	        
	</div>
	
	
	
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>	
	
	<script>
		window.onload =()=>{
			document.getElementById('datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            });
			
		}
	
	
	</script>
	
</body>
</html>