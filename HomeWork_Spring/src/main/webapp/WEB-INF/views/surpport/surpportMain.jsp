<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원정보</title>
<link href="${ contextPath }/CSS/sponsorService.css" rel="stylesheet" type="text/css">
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
 	</div>
	<div id="voulnteer2">
		<jsp:include page="../common/volunteer.jsp"/>
	</div>	



<div class="container">
        <h1 class="title">후원정보</h1>
        <div class="field">
            <label class="label">후원주기</label>
            <button class="button selected" onclick="toggleButtonColor(this)">정기</button>
            <button class="button" onclick="toggleButtonColor(this)">일시</button>
        </div>
        <div class="field">
            <div>
                <label class="label">후원분야</label>
                <button class="button selected" onclick="toggleButtonColor(this)">국내 건축 후원</button>
                <button class="button" onclick="toggleButtonColor(this)">해외 건축 후원</button>
            </div>
        </div>
        <div class="field">
            <label class="label">후원금액</label>
            <div>
                <button class="button selected" name="money" onclick="selectAmount(this, 20000)">20,000원</button>
                <button class="button" name="money" onclick="selectAmount(this, 30000)">30,000원</button>
                <button class="button" name="money" onclick="selectAmount(this, 50000)">50,000원</button>
                <button class="button" name="money" onclick="selectAmount(this, 100000)">100,000원</button>
                <button class="button" name="money" onclick="showCustomAmountField()">직접입력</button>
            </div>
        </div>
        <div id="customAmountField" class="field hidden">
            <label class="label">직접 입력</label>
            <input type="number" id="customAmountInput" class="custom-amount-input" placeholder="금액을 입력하세요" min="10000" step="1000">원
        </div>
    </div>
    <br><br>
    <div class="container">
        <div class="grid grid-cols-1 md:grid-cols-2">
            <div id="credit-card-section">
                <h2 class="payInfo mb">결제 정보</h2>
                <div class="flex mb">
                    <button class="flex-1 selectY selectX border active-tab" onclick="showCreditCardSection()">신용/체크카드</button>
                    <button class="flex-1 selectY selectX border" onclick="showAutoTransferSection()">자동이체</button>
                </div>
                <form>
                    <div class="mb">
                        <label for="card-number" class="block">카드번호</label>
                        <input type="text" id="card-number" class="border" placeholder="카드번호">
                    </div>
                    <div class="mb flex space-x-4">
                        <div class="flex-1">
                            <label for="expiry-month" class="block">유효기간</label>
                            <input type="text" id="expiry-month" class="border" placeholder="MM" maxlength="2" oninput="checkValidMonth(this)">
                        </div>
                        <div class="flex-1">
                            <input type="text" id="expiry-year" class="border" placeholder="YY" maxlength="2">
                        </div>
                    </div>
                    <div class="mb">
                        <label for="card-name" class="block">카드주 명</label>
                        <input type="text" id="card-name" class="border" placeholder="카드주명">
                    </div>
                    <div class="mb">
                        <label for="birth-date" class="block">생년월일</label>
                        <input type="text" id="birth-date" class="border" placeholder="주민번호 앞 6자리">
                    </div>
                    <div class="mb">
                        <label for="password" class="block">비밀번호</label>
                        <input type="password" id="password" class="border" placeholder="비밀번호 앞 2자리">
                    </div>
                </form>
            </div>
            <div id="auto-transfer-section" class="hidden">
                <h2 class="payInfo mb">결제 정보</h2>
                <div class="flex mb">
                    <button class="flex-1 selectY selectX border" onclick="showCreditCardSection()">신용/체크카드</button>
                    <button class="flex-1 selectY selectX border active-tab" onclick="showAutoTransferSection()">자동이체</button>
                </div>
                <form>
                    <div class="mb">
                        <label for="bank-name" class="block">은행 명</label>
                        <select id="bank-name" class="border">
                            <option>국민은행</option>
                            <option>농협은행</option>
                            <option>신한은행</option>
                            <option>우리은행</option>
                            <option>IBK기업은행</option>
                            <option>KEB하나은행</option>
                            <option>카카오뱅크</option>
                            <option>토스뱅크</option>
                        </select>
                    </div>
                    <div class="mb">
                        <label for="account-number" class="block">계좌번호</label>
                        <input type="text" id="account-number" class="border" placeholder="계좌번호">
                    </div>
                    <div class="mb">
                        <label for="account-holder" class="block">예금주 명</label>
                        <input type="text" id="account-holder" class="border" placeholder="예금주명">
                    </div>
                    <div class="mb">
                        <label for="birth-date-transfer" class="block">생년월일</label>
                        <input type="text" id="birth-date-transfer" class="border" placeholder="주민번호 앞 6자리">
                    </div>
                </form>
            </div>
        </div>
        <div class="mt-6 p-4 spbg border spDescript">
            <p>* 정기후원 신청 후에 첫 후원은 7일 이내에 시도되며 이후 정기 후원일은 매월 5일입니다.</p>
            <p>* 후원실패 시 10, 15, 20, 25, 말일에 재후원이 시도됩니다.</p>
        </div>
        <hr>
        <input type="checkbox" id="agreeAll" class="termAgree" onclick="toggleAgreeAll()"> 전체 동의하기
        <br>
        <input type="checkbox" class="agreeTerms" onclick="toggleIndividualAgree(); showPopup('후원약관')"> 후원약관 동의<button onclick="openTerms()">[보기]</button>
        <br>
        <input type="checkbox" class="agreeTerms" onclick="toggleIndividualAgree(); showPopup('개인정보 이용수집 동의')"> 개인정보 이용수집 동의 <button onclick="openAgreeInfo()">보기</button>
        <hr>
        <button class="submit payInfo" onclick="submitDonation()">후원하기</button>
    </div>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 		</div>	
	
    <script>
        function toggleButtonColor(button) {
            var buttons = document.querySelectorAll('.button');
            buttons.forEach(function(btn) {
                if (btn !== button && btn.parentNode === button.parentNode) {
                    btn.classList.remove('selected');
                }
            });
            button.classList.toggle('selected');
        }

        function showCustomAmountField() {
            var customAmountField = document.getElementById('customAmountField');
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