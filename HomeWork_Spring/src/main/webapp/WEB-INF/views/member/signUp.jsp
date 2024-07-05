<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
<!-- 카카오 주소 api -->
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
	
	#voulnteer2 {
		height: 200px;
	}
	
	.inline-btn {
		display:inline-block;
		}
	
	/* .custom-form-control:focus {
            border: 10px solid; 
            } */


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




	
	<div align="center" >
		<div class="row d-flex flex-column justify-content-center mb-3 border border-5 w-50 mt-5 " align="center">
	        <label style="margin:20px; margin-left:15px; font-size:48px;"><b>Home Work</b> </label>
			<form align="left" action="${contextPath }/insertMember.me" method="post">
				<div class="form-floating">
		        <input class="form-control w-50 m-4" type="text" id="id"name="memberId"  required placeholder="아이디를 입력해주세요">
				  <label class="m-4 mt-0" style="color:#ced4da" for="id">아이디</label>
				</div>
				
				<div class="form-floating">
			        <input class="form-control w-50 m-4" type="text" id="memberName"name="memberName" required placeholder="성함을 입력해주세요">
					<label class="m-4 mt-0" style="color:#ced4da" for="memberName">성함</label>
				</div>
				
				<div class="form-floating">
		        	<input class="form-control w-50 m-4" type="password" id="password"name="memberPwd" required placeholder="비밀번호를 입력해주세요">
		        	<label class="m-4 mt-0" style="color:#ced4da" for="password">비밀번호</label>
		        </div>
		        <div class="form-floating">
			        <input class="form-control w-50 m-4" type="password" id="passwordCheck" required placeholder="비밀번호 확인">
			        <label class="m-4 mt-0" style="color:#ced4da" for="passwordCheck">비밀번호 확인</label>
		        </div>
	  			<div class="col-12 ml-4">
					<input class="form-check-input " checked style="margin-left:25px;"  type="radio"  name="gender" id="man" value="M">
		  			<label class="form-check-label " for="man">남자</label>
					<input class="form-check-input "  type="radio" name="gender" id="woman" value="F">
		  			<label class="form-check-label" for="woman">여자</label>  
				</div>
				<div class="form-floating">
		        	<input class="form-control w-50 m-4" type="text" placeholder="닉네임" required id="nickName" name="nickName">
		        	<label class="m-4 mt-0" style="color:#ced4da" for="cinkName">닉네임</label>
		        </div>
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
		        <!-- <input class="form-control w-50 m-4" type="text" name="address" placeholder="주소 입력"> -->
		        <div class=col-12>
			        <input name="address" class="form-control w-25 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_postcode" placeholder="우편번호" readonly>
			        <input class="btn btn-outline-secondary btn-sm" type="button" class="btn btn-outline-secondary btn-sm" style="display:inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			        <input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text"  id="sample6_address" placeholder="주소" readonly>
					<input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_detailAddress" placeholder="상세주소">
					
		        </div>
		        <button class="btn btn-secondary btn-lg w-25 m-4 btn-primary">가입하기</button>
	        </form>
		</div>	        
	</div>
	
	


<script>	// 카카오 api 지도
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
	
	
	
	
	
	
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>
	<div id="fixedBtn">
 		<jsp:include page="../common/fixedBtn.jsp"/>
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
			document.getElementById('id').addEventListener('blur',function(){		//인풋태그id값 ajax
				$.ajax({
					url:'${contextPath}/checkMemberId.me',
					data:{id:this.value.trim()},
					success:(data)=>{
						if(this.value.trim()==''){
							
						}else if(data == 'yes'){
							this.style.border ="2px solid red";
						}else{
							this.style.border ="2px solid rgb(107,236,98)";
						}
					},
					error:data=>console.log(data)
				});
			});
			
			//중복패스워드칸 초기화하기
			const password = document.getElementById('password')
			const passwordCheck = document.getElementById('passwordCheck')
			password.addEventListener('focus',function(){
				
				passwordCheck.value = '';
				passwordCheck.style.border = '1px solid #ced4da';
			});
			
			
			//인풋태그pwd 중복체크
			passwordCheck.addEventListener('blur',function(){
				const pwd = password.value.trim();
				console.log(pwd);
				console.log(this.value);
				if(pwd == this.value.trim()  && pwd != ''){
					this.style.border ='2px solid rgb(107,236,98)';
				}else{
					this.style.border ='2px solid red';
					
				}
			});	
			
			
			document.getElementById('nickName').addEventListener('blur',function(){		//인풋태그닉네임값 ajax
				$.ajax({
					url:'${contextPath}/checkMemberNickName.me',
					data:{nickName:this.value.trim()},
					success:(data)=>{
						if(this.value.trim()==''){
							
						}else if(data == 'yes'){
							this.style.border ="2px solid red";
						}else{
							this.style.border ="2px solid rgb(107,236,98)";
						}
					},
					error:data=>console.log(data)
				});
			});
			
		}
	
	
	</script>
	
</body>
</html>