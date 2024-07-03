<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#domesticSeoul{display:none;}
	area{cursor: pointer;}
	
	
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
	}
	
	h3 {
		font-size: 40px;
		margin-top:10px;
	}
	
	
	#topAndNavbar {
		background-image:linear-gradient(
	        rgba(0, 0, 0, 0.2),
	        rgba(0, 0, 0, 0.2)
	      )
	      ,url('image/topImage.png');
	    background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    transition: background-color 0.5s ease;
	}
	
	em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
	.checkList li{line-height:35px; list-style-color:skyblue;}
	
	li::marker {
            color: skyblue;
        }
	
	.categoryDomestic{display: inline-block;  margin-right: 2px; 
		width:400px; line-height:50px; margin-left:-11px;  text-align:center;
		}
	a{display:block; color:#555555; font-size: 17px; text-decoration: none;}
	
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
 		<Br><Br>
 		<h3>자원 봉사 신청 하기</h3>
 		<Br>
 		
 		<div align="center">
			<ul>
				<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="domesticBoard">국내봉사일정</a></li>
				<li class=categoryDomestic><a style="border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="globalBoard">해외봉사일정</a></li>
				<li class=categoryDomestic><a style="border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="domestic03.do">게시판 모아보기</a></li>
			</ul>
		</div>
 		
 		
 		<div class="checkList" style="width:1200px; border:1px solid #ddd; text-align:left; margin:30px; padding:15px;">
 		<em>&nbsp;&nbsp; 확인하기!</em>
 		<ul>
 			<li>아래 일정에서 신청하고자 하는 날짜/지역을 선택하세요!</li>
 			<li>일정이 없는 경우엔 지도에 나타나지 않습니다.</li>
 			<li>건축봉사활동 특성상, 현장 상황에 따라 공사는 진행되어도 봉사자 모집은 없을 수 있습니다.</li>
 		</ul>
 		</div>
		<div style="border:8px solid #E3E3E3; width:1232px;">
			<img src="image/globalMap.png" alt="해외 지도"  usemap="#menuMap" /> 
		
			<map name="menuMap" id="menuMap"> 
		     <area  shape="rect"  coords="211,145,379,170"  alt="서울"  onclick=showTarget() />
		     <area  shape="rect"  coords="284,217,387,239"  alt="아시아"  onclick=showTarget()/>
		     <area  shape="rect"  coords="605,166,692,184"  alt="미국"  onclick=showTarget() />
		     <area  shape="rect"  coords="698,325,770,365"  alt="캐나다"  onclick=showTarget() />
		      
		      
			</map> 
		</div>
		<Br><Br>
		<div id="domesticSeoul">
			<jsp:include page="board12.jsp" />
		</div>
		<Br><Br>
		
	
	
	</div>
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 		</div>	
	<script>
	const showTarget = () =>{
		
		document.getElementById('domesticSeoul').style.display = 'block';
	}
	
	</script>
</body>
</html>