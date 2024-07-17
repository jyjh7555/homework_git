<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>
body {
    font-family: "Nanum Gothic", sans-serif;
    font-weight: 400;
    font-style: normal;
	}
	
	#categoryMypageContainer {
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    list-style: none;
	    margin-top: 35px;
	    margin-bottom: 35px;
	    border-bottom: 1px solid lightgray;
	}
	
	#categoryMypageContainer li {
	    padding-bottom: 30px;
	    margin: 10px 100px;
	    position: relative;
	    padding-right: 70px;
	}
	
	#categoryMypageContainer li > a:hover {
	    color: skyblue;
	}
	
	#categoryMypageContainer a {
	    text-decoration: none;
	    color: black;
	    font-size: 20px;
	}
	
	#inner-container {
	    width: 60%;
	    height: 300px;
	    display: flex;
	    justify-content: space-between;
	    align-items: stretch;
	    border: 4px solid #c8c8c8;
	    margin: auto;
	    margin-bottom: 30px;
	}
	
	.section-divider {
	    width: 1px;
	    height: 80%;
	    background-color: #e0e0e0;
	    margin: 0 20px;
	    align-self: center;
	}
	
	.welcome-section, .recent-activity-section {
	    flex: 1;
	}
	
	.welcome-section {
	    text-align: center;
	    margin: 50px 0 15px 40px;
	    white-space: nowrap;
	}
	
	.mdfbtn {
	    margin-top: 20px;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	}
	
	.welcome-section h5 {
	    font-size: 24px;
	    margin: 0;
	}
	
	.welcome-section a {
	    display: inline-block;
	    margin: 10px 0;
	    padding: 5px;
	    font-size: 18px;
	    text-decoration: none;
	    color: #333;
	    width: 200px;
	    font-weight: bold;
	    white-space: nowrap;
	}
	
	.recent-activity-section {
	    display: flex;
	    flex-direction: column;
	    margin: 0 30px 30px 40px;
	    height: 220px;
	
	}
	
	.activity-title {
	    font-size: 25px;
	    margin-bottom: 15px;
	    border-bottom: 2px solid #dee2e6;
	    padding-bottom: 10px;
	}
	
	.activity-table {
	    width: 100%;
	    border-collapse: separate; /* collapse에서 separate로 변경 */
	    border-spacing: 0; /* 셀 간격 제거 */
	}
	
	.activity-table thead {
	    position: sticky;
	    top: 0;
	    z-index: 2;
	    background-color: #f8f9fa;
	}	
	
	.activity-table thead th { /* th에서 thead th로 변경 */
	    font-weight: bold;
	    padding: 12px;
	    text-align: center;
	    border-bottom: 2px solid #dee2e6;
	}
	
	.activity-table tbody td { /* td에서 tbody td로 변경 */
	    padding: 12px;
	    text-align: center;
	    border-bottom: 1px solid #ddd;
	}
	
	.activity-table tbody tr:last-child td {
   	 	border-bottom: none;	
	}
	.table-container {
		flex:1;
	    max-height: 200px; /* 원하는 높이로 조정 */
	    overflow-y: auto;
	    border: 1px solid #dee2e6; /* 테이블 주변에 테두리 추가 */
	}
	
	#topAndNavbar {
	    background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url('resources/image/topImage.png');
	    background-size: cover;
	    background-position: center;
	    background-repeat: no-repeat;
	    transition: background-color 0.5s ease;
	    font-family: 'GowunBatang-Regular';
	}
	
	#voulnteer2 {
	    height: 200px;
	}
	
	#container {
	    font-family: 'Pretendard-Regular';
	}
	
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
	/* 스크롤바 스타일링 (선택사항) */
	.recent-activity-section div::-webkit-scrollbar {
	    width: 8px;
	}
	
	.recent-activity-section div::-webkit-scrollbar-track {
	    background: #f1f1f1;
	}
	
	.recent-activity-section div::-webkit-scrollbar-thumb {
	    background: #888;
	    border-radius: 4px;
	}
	
	.recent-activity-section div::-webkit-scrollbar-thumb:hover {
	    background: #555;
	}
</style>
</head>
<body>
	<div id=topAndNavbar >
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
	<div id="container" class="mt-4">
		<div id=inner-container>
			<div class="welcome-section">
	            <h5 class="border-bottom border-2 pb-2"><strong>${loginUser.memberName }</strong> 회원님 환영합니다!</h5>
	            <div class="mdfbtn">
	            	<a class="border border-2" href="updateMemberPage.me">회원정보 수정</a>
	            	<a class="border border-2" href="updatePwdPage.me">비밀번호 수정</a>
	            </div>
	        </div>
	        <div class="section-divider"></div>
			<div class="recent-activity-section mt-5">
			    <h5 class="activity-title">신청 대기 중인 봉사활동 내역</h5>
			    <div class="table-container">
			        <table class="activity-table">
			            <thead>
			                <tr>
			                    <th>게시글 번호</th>
			                    <th>제목</th>
			                    <th>상태</th>
			                    <th>취소</th>
			                </tr>
			            </thead>
			            <tbody>
			                <c:forEach items="${recentVolunteers}" var="volunteer">
			                    <c:if test="${volunteer.status != 'N'}">
			                        <tr>
			                            <td>${volunteer.boardNo}</td>
			                            <td>${volunteer.title}</td>
			                            <td>${volunteer.status}</td>
			                            <td><button class="btn btn-sm btn-success" onclick="showModal(this)">취소</button></td>
			                        </tr>
			                    </c:if>
			                </c:forEach>
			            </tbody>
			        </table>
			    </div>
			</div>
	</div>
		
		<form id="form">
		<input type="hidden" name ="memberNo">
		<input type="hidden" name ="boardNo">
		<input type="hidden" name ="status" value="N">
		</form>
		
		<!-- 모달 -->
		<div class="modal fade" tabindex="-1" role="dialog" id="modalRefusal">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content rounded-3 shadow">
	      			<div class="modal-body p-4 text-center">
	        			<h3 class="mb-0">취소하시겠습니까?</h3>
	      			</div>
	      			<div class="modal-footer flex-nowrap p-0">
	        			<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0 border-end" onclick="volunteerStatusN()">
	        				<strong>네</strong>
	        			</button>
	        			<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0" data-bs-dismiss="modal" aria-label="Close"  id="refusalClose">아니오</button>
	      			</div>
	    		</div>
	  		</div>
		</div>
		
		
		

		
		<div id="footer">
			<jsp:include page="../common/footer.jsp"/>
		</div>
		<div id="fixedBtn">
			<jsp:include page="../common/fixedBtn.jsp"/>
		</div>		
 	</div>
 	
 	<script>
		
	 function changeBackground() {
	        const navbarSection = document.getElementById('navbar-section');
	        navbarSection.style.backgroundColor = "white";
	        const links = navbarSection.querySelectorAll('a');
	        links.forEach(function(link) {
	            link.style.color = "black";
	        })
	         const logoImage = document.getElementById('logo-image');
	         if (logoImage) {
	            logoImage.style.filter = "invert(0)";
	      };;
	    }

     function resetBackground() {
        const navbarSection = document.getElementById('navbar-section');
        navbarSection.style.backgroundColor = "transparent";
        const links = navbarSection.querySelectorAll('a');
        links.forEach(function(link) {
            link.style.color = "white";
        })
        const logoImage = document.getElementById('logo-image');
         if (logoImage) {
            logoImage.style.filter = "invert(1)";
      };
     }
     
     // 봉사신청 취소하기
     let boardNo ='';
	 function showModal(btn){
		 $('#modalRefusal').modal('show'); 
		 boardNo = btn.parentElement.previousElementSibling.previousElementSibling.previousElementSibling.innerText;
		 console.log(boardNo);
	 };
	 const form = document.getElementById('form');
	 function volunteerStatusN(){
		 form.action = '${contextPath}/deleteVolunteer.ad'
		 const memberNo = '${loginUser.memberNo}';
		 document.getElementsByName('boardNo')[0].value = boardNo;
		 document.getElementsByName('memberNo')[0].value = memberNo;
		 form.submit();
	 }
	 
     
	    
	    
	    
    </script>
</body>
</html>