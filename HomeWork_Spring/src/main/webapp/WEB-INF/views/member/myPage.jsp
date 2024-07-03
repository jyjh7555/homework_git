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
	
	#categoryMypageContainer li:not(:last-child)::after {
		content: "";
		position: absolute;
		right:-50px;
		bottom:7px;
		width: 1px;
		height:4rem;
		background-color: lightgray;
	}

	#categoryMypageContainer li:last-child {
		padding-right: 0; /* Remove right padding from the last child */
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
		border: 8px solid #E3E3E3;
		margin:auto;
		margin-bottom:30px;
	}
    .welcome-section {
        text-align: left;
        margin-right:40px;
        margin-top:60px;
        margin-left:40px;
        white-space: nowrap;
    }
    
    .mdfbtn {
    	margin-top:20px;
    	display:flex;
    	flex-direction:column;
    }
    

    .welcome-section h5 {
        font-size: 24px;
        margin: 0;
    }

    .welcome-section a {
        display: inline-block;
        margin-top: 10px;
        margin-bottom:10px;
        padding: 10px 20px;
        border: 1px solid #ccc;
        text-decoration: none;
        color: #333;
        border-radius: 4px;
        margin-right: 10px;
        width:120px;
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
    }
    
    .recent-activity-section>h5 {
    	position:relative;
    	font-size: 25px;
    	margin-right:50px;	
    }
    
    .recent-activity-section>h5::after {
    	content: "";
		position: absolute;
		right:-50px;
		top:-40px;
		bottom:15px;
		width: 1px;
		height:8rem;
		background-color: lightgray;
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
	    
	}
	
	#voulnteer2 {
		height: 200px;
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
	<div id="container">
 		<div align="center">
		<ul id="categoryMypageContainer">
			<li class=categoryMyPage><a  href="#">마이홈</a></li>
			<li class=categoryMyPage><a  href="#">나의 봉사내역</a></li>
			<li class=categoryMyPage><a  href="#">집고치기 신청내역 </a></li>
		</ul>
	</div>
		<div id=inner-container>
			<div class="welcome-section">
	            <h5><strong>김기룡</strong> 회원님 환영합니다!</h5>
	            <div class="mdfbtn">
	            	<a href="updateMemberPage.me">회원정보 수정&nbsp;&nbsp;&nbsp; ></a>
	            	<a href="https://donate.habitat.or.kr/habitat/mypage/login" onclick="gtag('event', '버튼클릭', {'event_category': '기부금영수증','event_label': 'mypage기부금영수증'});">기부금 영수증&nbsp;&nbsp;&nbsp; ></a>
	            </div>
	            
	        </div>
	        <div class="info-section">
	            <div class="info-box">
	                <a href="/news/report"></a>
	                <strong>연차보고서</strong>
	                <p>자세한 후원금 사용내역은 <br> 연차보고서로 확인하세요.</p>
	                <a href="/news/report" class="more">MORE VIEW</a>
	            </div>
	            <div class="info-box">
	                <a href="/welfare/schedule"></a>
	                <strong>자원봉사 신청</strong>
	                <p>국내, 해외 자원봉사를 통해 <br> 손길을 전해보세요.</p>
	                <a href="/welfare/schedule" class="more">MORE VIEW</a>
	            </div>
	        </div>
		</div>
		<div class="recent-activity-section">
            <h5>최근 활동 내역</h5>
            <ul>
                <li><a href="#">최근 로그인 : 2024-06-10</a></li>
                <li><a href="#">최근 작성한 게시물 : 자원봉사 후기</a></li>
                <li><a href="#">최근 신청한 서비스 : 집 고치기 신청</a></li>
            </ul>
        </div>
		
 		<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
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
    </script>
</body>
</html>