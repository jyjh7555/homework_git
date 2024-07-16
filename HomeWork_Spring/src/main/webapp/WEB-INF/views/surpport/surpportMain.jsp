<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원정보</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

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
	@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
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


	<form method="post" id="form">
		<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
			<div class="d-flex flex-column justify-content-center mb-3 border border-3 w-50 mt-3 ">
			   	<h1 class="title ms-3 m-4" style="font-family:'Pretendard-Regular'"><b>후원 정보</b></h1>
		        <div class="field mb-3">
		            <label class="label me-3 ms-4">후원주기</label>
		            <button type="button" class="button btn btn-outline-secondary btn-sm" onclick="toggleButtonColor(this)">일시</button>
		        </div>
		        <div class="field mb-3">
		                <label class="label me-3 ms-4">후원분야</label>
		                <button type="button" class="button selected btn btn-outline-secondary btn-sm" onclick="toggleButtonColor(this)">국내 건축 후원</button>
		                <button type="button" class="button btn btn-outline-secondary btn-sm" onclick="toggleButtonColor(this)">해외 건축 후원</button>
		                <input type="hidden" name="product" value="국내건축후원하기">
		        </div>
		        <div class="field mb-3">
		            <label class="label me-3 ms-4 text-nowrap">후원금액</label>
		            
		                <button type="button" class="button selected btn btn-outline-secondary btn-sm" name="money" onclick="selectAmount(this, 20000)">20,000원</button>
		                <button type="button" class="button btn btn-outline-secondary btn-sm" name="money" onclick="selectAmount(this, 30000)">30,000원</button>
		                <button type="button" class="button btn btn-outline-secondary btn-sm" name="money" onclick="selectAmount(this, 50000)">50,000원</button>
		                <button type="button" class="button btn btn-outline-secondary btn-sm" name="money" onclick="selectAmount(this, 100000)">100,000원</button>
		                <button type="button" class="button btn btn-outline-secondary btn-sm" name="money" onclick="showCustomAmountField()">직접입력</button>
	
		        </div>
		        <div id="customAmountField" class="field d-none">
		            <label class="label me-3 ms-4 mb-3">직접 입력</label>
		            <input type="number" name="amount"id="customAmountInput" class="form-control-sm  border border-2" placeholder="금액을 입력하세요" min="10000" step="1000">원
		        </div>
			</div>
		</div>
		
		<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3 " >
			<div class="d-flex flex-column justify-content-center mb-3 border border-3 w-50 mt-3 ">
			   	<h1 class="title ms-3 m-4" style="font-family:'Pretendard-Regular'"><b>후원자 정보</b></h1>
		        <div class="row mb-3 m-4">
				    <label class="col-sm-2 col-form-label" style="align:center;">성함</label>
	   		        <input class="form-control w-25" type="text" id="name"name="buyerName" required <c:if test="${!empty loginUser}">value="${loginUser.memberName }"</c:if> placeholder="이름">
				</div>
				<div class="row mb-3 m-4 mt-1">
		        	<label class="col-sm-2 col-form-label">휴대폰 번호</label>
		        	<input class="form-control mt-1 mb-1" name="phone" style="width:75px; display:inline-block;" type="text" name="phone" value="010" readonly >
		        	<span class="col-1"  style="width:12px; margin-top:9px;">-</span>
		        	<input class="form-control m-3 mt-1 mb-1" name="phone" style="width:75px; display:inline-block;" <c:if test="${!empty loginUser}">value="${midPhone}"</c:if> type="text" name="phone" maxlength="4" placeholder="0000">
		        	<span class="col-1" style="width:12px; margin-top:9px;">-</span>
		        	<input class="form-control m-3 mt-1 mb-1" name="phone" style="width:75px; display:inline-block;" <c:if test="${!empty loginUser}">value="${lastPhone}"</c:if> type="text" name="phone" maxlength="4" placeholder="9999">
			    </div>
		        
		        
		        <div class="row mb-3 m-4">
		        	<label class="col-sm-2 col-form-label">이메일  입력</label><br>
		        	<input class="form-control mt-1 mb-1" style=" margin-right:5px;width:20%; display:inline-block;" <c:if test="${!empty loginUser}">value="${loginUser.email.split('@')[0]}"</c:if>name="emailId"type="text" placeholder="이메일">
		        	<span class="col-1" style="margin-top:9px; margin-left:-15px; margin-right:-25px;">@</span>
		        	<input class="form-control mt-1 mb-1" style="width:26%; display:inline-block;" type="text" <c:if test="${!empty loginUser}">value="${loginUser.email.split('@')[1]}"</c:if>name="emailDomain" placeholder="">
		        	<select class="form-control mt-1 mb-1" style="width:20%; display:inline-block;" id="emailDomainHelp">
		        		<option value="">직접입력</option>
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>hanmail.net</option>
					</select>
			    </div>
			        
			       
			</div>
		</div>
			<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
	        	<button type="button" class ="btn btm-lg  btn-secondary m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="requestPay()">후원</button>
			</div>
	        	<!-- <button type="button" class ="btn btm-lg btn-success m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="test()">테스트</button> -->
	        	<input type="hidden" id="payCheck"name="success">
	        	<input type="hidden" name="merchantUid">
	        	<input type="hidden" name="memberNo"<c:if test="${ !empty loginUser }">value="${loginUser.memberNo}"</c:if><c:if test="${ empty loginUser }">value="0"</c:if> >
	</form>
	
	
	
    <br><br>
    
    
    
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
	</div>
	
		
	<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    		//포트원 api
    	
    		
	    IMP.init("imp25707021");		//내가생성한 가짜 스토어번호임
    	
    	const now = new Date();
		
    	const year = now.getFullYear();
    	
    	const month = (now.getMonth() + 1).toString().padStart(2, '0'); // 월은 0부터 시작하므로 1을 더함
    	const day = now.getDate().toString().padStart(2, '0');
    	const hours = now.getHours().toString().padStart(2, '0');
    	const minutes = now.getMinutes().toString().padStart(2, '0');
    	const seconds = now.getSeconds().toString().padStart(2, '0');

    	const formattedTime = year+month+day+hours+minutes+seconds;
    	const form = document.getElementById('form');
    	
	    function requestPay() {
	    	const money = document.getElementById('customAmountInput').value;
			
	    	
	    	
	    	
	    	
	    	/* if(money >=1000){ */  //테스트 중에만 주석, 실제입력은 다르게!
		    	IMP.request_pay({
			        pg: "html5_inicis.INIpayTest",
			        pay_method: "card",
			        merchant_uid: formattedTime,
			        name: "HomeWork후원결제",
			        amount: money,
			        buyer_tel: "${ loginUser.phone}",
		    	},function(response){
		    	  console.log(response);
		    	  console.log(response.success);
		    	  if(response.success){
		    		  alert('결제 성공');
		    		  document.getElementById('payCheck').value = response.success;
		    		  document.getElementsByName('merchantUid')[0].value = response.merchant_uid;
		    		  form.action = '${contextPath}/successPay.su';
		  	    	  form.submit();
		    		  
		    		  
		    	  }else{
		    		  alert('결제 실패하였습니다');
		    		  alert(response.error_msg);
		    		  
		    		  /* form.action = '${contextPath}/successPay.su';
		  	    	  form.submit(); */
		    	  }
		     	});
	    	/* }else{
	    		alert('후원 최소 금액은 1,000원입니다');
	    	} */
	    }
	    
	    
		function test(){
			document.getElementById('payCheck').value = '일단확인';
			form.action = '${contextPath}/successPay.su';
	    	form.submit();
		}
    	
	    const emailDomain = document.getElementById('emailDomainHelp');
		
		emailDomain.addEventListener('change',function(){
			//console.log(this.value);
			const domain = this.value;
			
			this.previousElementSibling.value = domain;
		});
    
    
    
    
	    function toggleButtonColor(button) {
	        var buttons = button.parentNode.querySelectorAll('.button');
	        buttons.forEach(function(btn) {
	            btn.classList.remove('btn-primary', 'text-dark', 'bg-info');
	            btn.classList.add('btn-outline-secondary');
	        });
	        button.classList.remove('btn-outline-secondary');
	        button.classList.add('btn-primary', 'text-dark', 'bg-info');
	        if(buttons.length == 2 ){
				if(buttons[0].classList.contains('bg-info')){
					document.getElementsByName('product')[0].value = "국내건축후원";
				}else{
					document.getElementsByName('product')[0].value = "해외건축후원";
				}
				
	        }
	        
	      }

	    function showCustomAmountField() {
	        var customAmountField = document.getElementById('customAmountField');
	        customAmountField.classList.remove('d-none');
	        customAmountField.style.display = 'block';
	    }

        function selectAmount(button, amount) {
            toggleButtonColor(button);
            var customAmountInput = document.getElementById('customAmountInput');
            customAmountInput.value = amount;
        }

        function showCreditCardSection() {
            document.getElementById('credit-card-section').classList.remove('hidden');
            document.getElementById('auto-transfer-section').classList.add('hidden');
        }

        function showAutoTransferSection() {
            document.getElementById('credit-card-section').classList.add('hidden');
            document.getElementById('auto-transfer-section').classList.remove('hidden');
        }

        function checkValidMonth(input) {
            var value = parseInt(input.value);
            if (isNaN(value) || value < 1 || value > 12) {
                input.value = '';
            }
        }

        function toggleAgreeAll() {
            var agreeAll = document.getElementById('agreeAll');
            var agreeTerms = document.querySelectorAll('.agreeTerms');
            agreeTerms.forEach(function(term) {
                term.checked = agreeAll.checked;
            });
        }

        function toggleIndividualAgree() {
            var agreeTerms = document.querySelectorAll('.agreeTerms');
            var agreeAll = document.getElementById('agreeAll');
            agreeAll.checked = Array.from(agreeTerms).every(function(term) {
                return term.checked;
            });
        }

        function openTerms() {
            window.open("terms.jsp", "_blank", "width=600,height=400");
        }
        function openAgreeInfo() {
            window.open("agreeInfo.jsp", "_blank", "width=600,height=400");
        }
        function submitDonation() {
            alert("후원해주셔서 감사합니다.");
        }
    </script>
</body>
</html>