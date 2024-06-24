<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ contextPath }/CSS/domestic2.css" rel="stylesheet" type="text/css">
<style>


	.categoryDomestic{display: inline-block;  margin-right: 2px; 
		width:400px; line-height:50px; margin-left:-11px;  text-align:center;
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
	
	

</style>
</head>
<body >
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

	<br><br>
	

	
	
	<div align="center">
		<ul>
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-bottom:3px solid #00AFD7" href="domestic01.in">집짓기</a></li>
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="domestic02.in">주거환경개선</a></li>
			<li class=categoryDomestic><a style="border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="domestic03.in">긴급/재난</a></li>
		</ul>
	</div>
	<p align="center"style="font-size:42px;"><b> 긴급/재난</b><p>
	<p align="center" style="font-size:30px;"> 재난과 재해로 거처를 잃은 이웃들을 위한 이동식 주택을 짓습니다.</p>
	
	<br>
	
	<div align="center">
		
		<div class="domeMainImage" align="center" style="background-image:url('resources/image/dome03image1.jpg');">
			<div style="color:white; font-size:48px; padding:100px; font-weight:bold;">재난 구조</div>
		</div>
		
		<div class="content" align="left" >
		<br><br><br><br><br> 
			<div align="left" style="display:inline-block; border-left: 10px solid #e3e3e3; margin-left:100px; padding:10px;width:500px;">
			<h1>긴급/재난</h1>
			<h3>재난,재해 등 긴급한 주거 구호 활동을 위한 <br>
				이동식 주택 집짓기 활동을 전개하고 있습니다</h3>
			</div>
			
			<div style="display:inline-block; width:500px; margin-left:100px;padding:10px;">
			<p>home work는 국내에 재난피해가 발생했을 때 도움이 필요한 사람들에게
				봉사자와 함께 임시거처를 만들어줍니다. 긴급지원이 필요한 경우 자원봉사자들은
				이동식 주택 집짓기 봉사활동에 참여할 수 있습니다.</p>
			</div>
			<br>
			
			
			<hr>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<img src="resources/image/dome03image2.jpg"></img>
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-left:50px; justify-content: center;">
					<em>밤새워 집을 ‘배달’하다
						수해지역 사랑의 집짓기</em>
						<div class="border"></div>
					
					<p>2006년 홍수로 피해를 입은 강원도 인제와 평창지역에
						50채의 이동식 주택을 전달하였습니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-right:50px; justify-content: center;">
					<em>이동식 결핵 병실,
						배에 실려 북으로 향하다</em>
					<div class="border"></div>
					<p>2009년 북한의 결핵 환자들 요양 시설로 6채의 이동식 주택을
						전달하였습니다.</p>
				 </div>
				
				<img src="resources/image/dome03image3.jpg"></img>
				
			</div>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<img src="resources/image/dome03image4.jpg"></img>
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-left:50px; justify-content: center;">
					<em>희망의 집은 내일을 살아가는
						든든한 힘이 됩니다.</em>
					<div class="border"></div>
					<p>2011년 서울광장에서 경북 영양 흙집에 살았던
						혜진이네 4남매에게 이동식 주택을 전달하였습니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-right:50px; justify-content: center;">
					<em>산불피해 이재민 지원</em>
					<div class="border"></div>
					
					<p>2019년 산불로 피해를 입은 강원도 고성에 12채의
						이동식 주택을 전달하였습니다.</p>
				 </div>
				
				<img src="resources/image/dome03image5.jpg"></img>
				
			</div>
			
			
			<jsp:include page="../common/volunteerBanner.jsp"/>
			<!-- <div class ="volunteerBanner" align="center" >
				<a href="volunteer.do"style="margin:-10px; text-decoration: none;">
					<br><br>
					<span style="color: white; font-size:48px; font-weight:bold;">봉사 활동 신청/목록 보기</span>
					<br><br>
					<span style="border-bottom:2px solid white; color:white;">More view</span>
					
					<br><br>
			
				</a>
			</div> -->
		</div>
		
	</div>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 		</div>	
	
</body>
</html>