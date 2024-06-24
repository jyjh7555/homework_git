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
	
	.volunteerBanner{
			background-image:url('${ contextPath }/image/volunteerBanner.jpg');
			
			
            
			border: 8px solid #E3E3E3;
			padding : 10px;
			
				
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
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="domestic01.in">집짓기</a></li>
			<li class=categoryDomestic><a style="border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="domestic02.in">주거환경개선</a></li>
			<li class=categoryDomestic><a style="border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="domestic03.in">긴급/재난</a></li>
		</ul>
	</div>
	<p align="center"style="font-size:42px;"><b>주거환경개선</b></p>
	<p align="center" style="font-size:30px;"> 짧은 시간에 이웃에게 꼭 필요한 최소한의 주거환경을 조성합니다.</p>
	
	<br>
	
	<div align="center">
		
		<div class="domeMainImage" align="center" style="background-image:url('resources/image/dome02Image1.jpg');">
			<div style="color:white; font-size:48px; padding:100px; font-weight:bold;">주거환경개선</div>
		</div>
		<div class="content" align="left" >
		<br><br><br><br><br> 
			<div align="left" style="display:inline-block; border-left: 10px solid #e3e3e3; margin-left:100px; padding:10px;width:500px;">
			<h1>주거환경개선</h1>
			<h3>열악한 주거환경에 처해있는 소외계층과
				저소득층의 집과 시설을 개선하고 있습니다.</h3>
			</div>
			
			<div style="display:inline-block; width:500px; margin-left:100px;padding:10px;">
			<p>home work가 고치는 집은 더 적은 비용으로 더 많은 가정이 더 나은 환경에서 살게 합니다.
				자원봉사자들은 주거환경개선 현장에서 짧은 시간 안에
				직접 주거환경을 바꿀 수 있습니다.</p>
			</div>
			<br>
			
			
			<hr>
			
			<div style="margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="imageDiv" align="center" ><img src="resources/image/dome02Image3.jpg" style="width:550px; height:300px;"/></div>
				<div class="domeCon" align="left" style="width:500px; margin-left:50px;">
					<em>만드는 즐거움, 그 안에 담긴 정성, 소중한 나눔</em>
					<div class="border"></div>
					
					<p>가족, 친구 등 봉사자들이 한자리에 모여 집과 관련된 가구 및 소품을
						D.I.Y(Do It Yourself)로 제작하고, 완성된 물품은 지역아동센터 등 필요한 곳에 기부 할 수 있습니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="domeCon" align="right" style="width:500px; margin-right:50px;">
					<em>주거취약가정에게 기쁨을.</em>
					<div class="border"></div>
					
					<p>위생적이고 안전한 환경에서 지낼 수 있도록 침수 피해를 예방하기 위한 창호, 방수 설비 설치 등 변화를 줄 수 있습니다</p>
				 </div>
				<div class="imageDiv" align="center" >
					<img src="resources/image/dome02Image02.png" style="width:550px; height:300px;"></img>
				</div>
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