<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
</head>
<body>


<button onclick="requestPay()">결제하기</button>

<script>
IMP.init("imp14397622");

function requestPay() {
  IMP.request_pay({
    pg: "html5_inicis.INIpayTest",
    pay_method: "card",
    merchant_uid: "test_ly5g0qmu",
    name: "테스트 결제",
    amount: 100,
    buyer_tel: "010-0000-0000",
  });
}




// 여기 환불인데 잘모르겠음
const data = JSON.stringify({});

const xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener('readystatechange', function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open('post', 'https://api.iamport.kr/payments/cancel');
xhr.setRequestHeader('Content-Type', 'application/json');

xhr.send(data);

console.log(data);
console.log(xhr);

</script>





</body>
</html>