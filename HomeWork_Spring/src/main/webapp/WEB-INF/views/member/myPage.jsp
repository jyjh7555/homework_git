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
		display:flex;
		align-items:center;
		justify-content:center;
		list-style:none;
		margin-top:35px;
		margin-bottom:35px;
		border-bottom:1px solid lightgray;
		
	}
	
	#categoryMypageContainer li {
		padding-bottom: 30px;
		margin: 10px 100px;
		position: relative;
		padding-right: 70px; /* Adjusted to account for the right padding of the last child */
	}
	
	#categoryMypageContainer li>a:hover {
		color:skyblue;
	}
	
	
	#categoryMypageContainer a {
		text-decoration:none;
		color:black;
		font-size:20px;
		
	}
	
	#inner-container {
		width:60%;
		height:300px;
		display:flex;
		justify-content:center;
		border: 4px solid #c8c8c8;
		margin:auto;
		margin-bottom:30px;
		align-items: stretch;
	}
	.section-divider {
    width: 1px;
    height: 80%; /* 또는 원하는 높이 */
    background-color: #e0e0e0; /* 구분선 색상 */
    margin: 0 20px; /* 좌우 여백 */
    align-self: center; /* Flexbox 컨테이너 내에서 수직 중앙 정렬 */
	}
	
	.welcome-section, .recent-activity-section {
	    flex: 1; /* 두 섹션이 동일한 너비를 가지도록 설정 */
	}
    .welcome-section {
        text-align: center;
        margin-right:0;
        margin-top:50px;
        margin-bottom:15px;
        margin-left:40px;
        white-space: nowrap;
        
    }
    
    .mdfbtn {
    	margin-top:20px;
    	display:flex;
    	flex-direction:column;
    	align-items:center;
    }
    

    .welcome-section h5 {
        font-size: 24px;
        margin: 0;
    }

    .welcome-section a {
        display: inline-block;
        margin-top: 10px;
        margin-bottom:10px;
        padding:5px 5px;
        font-size:18px;
        text-decoration: none;
        color: #333;
        width:200px;
        font-weight:bold;
        white-space: nowrap;
    }

    .info-section {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        padding-top: 20px;
        margin-top:30px;
        width:600px;
        margin-right:30px;
        
    }
    
    .info-section p {

    	line-height:1.5;
    }

    .info-box {
        flex: 1;
        text-align: center;
        padding: 20px;
        padding-top: 40px;
        border: 1px solid #e5e5e5;
        border-radius: 4px;
        height:150px;
    }

    .info-box strong {
        display: block;
        font-size: 18px;
        margin-bottom: 10px;
    }

    .info-box p {
        margin: 0 0 20px;
        color: #666;
    }

    .info-box .more {
        display: inline-block;
        font-size: 14px;
        color: #999;
        text-decoration: none;
    }

    .info-box .more:hover {
        text-decoration: underline;
    }
    
    .recent-activity-section {
    	display:flex;
    	justify-content:center;
    	margin-bottom: 30px;
    	margin-left:40px;
    	margin-right:30px;
    }
    
    .recent-activity-section>h5 {
    	position:relative;
    	font-size: 25px;
    	margin-right:50px;	
    }
    
 
    
 
    
      .recent-activity-section>ul {
    	list-style:none;
    	line-height:2;
    }
    
    .recent-activity-section a:hover {
    	text-decoration:underline;
    	
    }
     .recent-activity-section a {
	     text-decoration:none;
	     color:black;
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
	    font-family: 'GowunBatang-Regular';
	    
	}
	
	#voulnteer2 {
		height: 200px;
	}
	
	.recent-activity-section {
    display: flex;
    flex-direction: column;
	}

	.activity-title {
	    margin-bottom: 15px; /* 제목과 테이블 사이의 간격 조정 */
	}
	
	.activity-table {
	    width: 100%; /* 테이블이 컨테이너의 전체 너비를 차지하도록 */
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
	            <h5><strong>${loginUser.memberName }</strong> 회원님 환영합니다!</h5>
	            <div class="mdfbtn">
	            	<a class="border border-2" href="updateMemberPage.me">회원정보 수정</a>
	            	<a class="border border-2" href="updatePwdPage.me">비밀번호 수정</a>
	            </div>
	        </div>
       		<div align="center"class="item-center recent-activity-section" style="overflow:hidden">
	            <h5 class="d-block activity-title">신청 대기 중인 봉사활동 내역</h5>
	            <table class="activity-table">
			        <thead>
			            <tr align="center">
			                <th>게시글 번호</th>
			                <th>제목</th>
			                <th style="margin-left:-5px;">상태 </th>
			                <th> 취소</th>
			            </tr>
			        </thead>
			        <tbody>
			            <c:forEach items="${recentVolunteers}" var="volunteer">
			            		<c:if test="${volunteer.status != 'N'}">
					                <tr align="center">
					                    <td>${volunteer.boardNo}</td>
					                    <td>${volunteer.title}</td>
					                    <td>${volunteer.status}</td>
					                    <td><button class="btn btm-sm btn-success" onclick="showModal(this)">취소</button></td>
				                	</tr>
			                	</c:if>
			            </c:forEach>
			        </tbody>
	   		   </table>
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