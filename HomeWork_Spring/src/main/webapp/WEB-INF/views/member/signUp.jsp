<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
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
		        	
		        	<input class="form-control m-4 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" value="010" readonly >-
		        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" placeholder="0000">-
		        	<input class="form-control m-3 mt-1 mb-1" style="width:75px; display:inline-block;" type="text" name="phone" maxlength="4" placeholder="9999">
		        </div>
		        <br>
		        <div class="col-12">
		        	<label style="margin-left:25px; ">이메일  입력</label><br>
		        	<input class="form-control mt-1 mb-1" style="margin-left:25px; margin-right:5px;width:20%; display:inline-block;" name="emailId"type="text" placeholder="이메일">@
		        	<input class="form-control mt-1 mb-1" style="width:26%; display:inline-block;" type="text" name="emailDomain" placeholder="">
		        	<select class="form-control mt-1 mb-1" style="width:20%; display:inline-block;" id="emailDomainHelp">
		        		<option value="">직접입력</option>
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>hanmail.net</option>
					</select>
		        </div>
		        <input type="date" class="form-control w-25 m-4" value="2004-01-01" name="age" >
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
			
			const emailDomain = document.getElementById('emailDomainHelp');
			
			emailDomain.addEventListener('change',function(){
				//console.log(this.value);
				const domain = this.value;
				
				this.previousElementSibling.value = domain;
			})
			
			
			/* document.getElementById('datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            }); */
			
			/* const phones = document.getElementsByName('phone')
			for(const i of phones){
				i.addEventListener('keyup',function(){
					const regex = /^[0-9]{1,4}$/;
					//console.log(regex.test(i.value));
					if(regex.test(i.value)){
						
					}
				})
			} */
			
			
			/* document.getElementById('memberId').addEventListener('focusout', function(){
				const value = this.value;
				//const targetTd= this.parentElement.parentElement.nextElementSibling.children[0];
				if(value.trim() == ''){
					
				}else{
					$.ajax({
						url:'${contextPath}/checkEmpNo.me',			//무조건 들어가야 하는 객체키와값
						data:{value:value}, // 키 값엔 파라미터명 : 넣을데이터 // 앞 value는 내가 지정한 파라미터명이고 뒤는 변수 value를 집어넣엇다.차이 확인
						success: (data) =>{	// '서버'에서 보낸 값을 받아온 data 
							//console.log(data, typeof data);
							if(data.trim()== '0'){
								targetTd.innerText = '사용 가능한 사원 번호입니다';
								targetTd.style.color='green';
								
							}else if(data.trim()=='1'){
								targetTd.innerText = '중복된 사원 번호입니다';
								targetTd.style.color='red';
								
							}
							targetTd.style.fontSize = '12px';
							
						},
						error: data =>console.log(data)
						
						
					});	//타입도넣을수잇는데,생략하면get방식				//제이쿼리안에 에이작스함수
				}
				
			}) */
			
			
			
			
		}
	
	
	</script>
	
</body>
</html>