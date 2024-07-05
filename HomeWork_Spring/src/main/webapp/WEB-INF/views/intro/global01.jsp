<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ contextPath }/CSS/global1.css" rel="stylesheet" type="text/css">
</head>
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
<body >
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
	

	<br><br>
	
	<div id="global-container" align="center">
		<ul>
			<li class=categoryDomestic><a style=" border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="global01.in">주거환경 개선</a></li>
			<li class=categoryDomestic><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7;border-bottom:3px solid #00AFD7;" href="global02.in">식수 위생</a></li>
			<li class=categoryDomestic><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:2px solid #EEEEEE;border-bottom:3px solid #00AFD7;" href="global03.in">도시슬럼 지원</a></li>
		</ul>
	</div>
	<div class="sub-tit text-center mt-5">
		<h3 class=" semi-title fs-1 fw-bold">주거환경 개선</h3>
		<br>
	 	<h4>소박하지만 안전한 주거환경에서 거주할 수 있도록 새로운 주택을 건축하거나,주택을 보수합니다.</h4>
	</div>
	<div class="global-container"align="center">
		<div class="global-image1 d-flex justify-content-center mt-5 " style="background-image:url('resources/image/global1-1.jpg');">
			<h3 class="align-self-center lh-lg fw-semibold">Home Work는 농촌 지역과 도시 지역의 주거빈곤을 극복하기 위해 <br> 주거환경개선사업을 수행합니다</h3>
		</div>
	<div class="content">
		<div class="text-box1 d-flex  justify-content-center flex-column mt-4 ">
			<span class="tit d-flex justify-content-center lh-base fw-bold fs-2 mb-3">
				자립하는 가정을 통해 지역사회는 함께 지속가능한 변화를 경험합니다.
			</span>
			<div class="txt d-flex align-items-center flex-column mx-auto fs-4 lh-lg">
				 <p>
           			 HomeWork는 농촌 지역과 도시 지역의 주거빈곤을 극복하기 위해 주거환경개선사업을 수행합니다.
           			 <br>
           			 저소득, 장애인, 노인, 여성가장 등 가장 취약한 가정들이 소박하지만 안전한 주거환경에서 거주할 수 있도록 새로운 주택을 건축하거나, 주택을 보수합니다.
				 </p>
				 <p>				 	
            		 개선된 주거환경은 자립의 기반이 됩니다. 안정된 주거환경에서 아동들은 학교를 다니며 교육을 받습니다.
            		 <br>
           			 주거비 부담에서 벗어나 새로운 사업을 시작하고 더 나은 소득을 창출하여 미래를 위해 저축합니다.
           			 <br> 
           			 비가 새고, 바람이 불면 무너졌던 주거환경이 개선되어 안전하고 건강한 삶을 살 수 있습니다.
				 </p>
			 	 <p>가정은 새로운 주거환경에서 자립하게 되고, 자립하는 가정을 통해 지역사회는 함께 지속가능한 변화를 경험합니다.</p>
			</div>	
		</div>
		<hr>
		<div class="text-container1 d-flex justify-content-center gap-5  ">
			<div class="align-self-center w-25  ">
				<h3 class="fs-2 fw-semibold mb-3">주택 신축 사업</h3>
				<h4 class="fs-4 lh-base">각국에는 해비타트의 표준 주택모델이 있습니다.<br>
					지역에서 조달가능한 자재를 활용하여 적정주택을 제공합니다.<br>
					지역정부 및 마을 대표와 함께 논의하여 신축 사업의 대상자를<br>
					선정합니다.
				</h4>
			</div>
			<div class="global-image2 w-75 h-75 mt-5" style="background-image:url('resources/image/global1-2.PNG');">
			</div>
		</div>
		
		<hr>
		
		<div class="text-container1 d-flex justify-content-center gap-5  ">
			<div class="global-image2 w-75 h-75 mt-5" style="background-image:url('resources/image/global1-3.PNG');"></div>
			<div class="align-self-center w-25  ">
				<h3 class="fs-2 fw-semibold mb-3">교육 환경 개선</h3>
				<h4 class="fs-4 lh-base">
               							 마을 내 학교에 대한 접근성을 개선하여 안전하게
               							 <br>
               							 교육받을 수 있는 환경을 조성합니다.
               							 <br>
                						 필요에 따라 도서관, 컴퓨터실을 구축하여 정보의
                						 <br>
               							 접근성을 제고합니다.
				</h4>
			</div>
		</div>
		
		
		
		<jsp:include page="../common/volunteerBanner.jsp"/>
		<!-- <div class ="volunteerBanner" align="center" >
			<a href="volunteer.do"style="margin:-10px; text-decoration: none;">
				<br><br>
				<span style="color: white; font-size:48px; font-weight:bold;">봉사 활동 신청/목록 보기</span>
				<br><br>
				<span style="border-bottom:2px solid white; color:white;">More view</span>
				
				
		
			</a>
		</div> -->
		
		
		
		
	</div>
		
	</div>
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>
	<div id="fixedBtn">
 		<jsp:include page="../common/fixedBtn.jsp"/>
 	</div>	
 		
 		
 		<Script>
 			const volunteer = () =>{
 				
 			}
 		</Script>
</body>
</html>