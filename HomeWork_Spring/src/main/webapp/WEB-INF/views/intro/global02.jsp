<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기적을 짓는 봉사 - HomeWork</title>
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
	    font-family: 'GowunBatang-Regular';
	    
	
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
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="global01.in">주거환경 개선</a></li>
			<li class=categoryDomestic><a style="border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="global02.in">식수 위생</a></li>
			<li class=categoryDomestic><a style="border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7; border-bottom:3px solid #00AFD7" href="global03.in">도시슬럼 지원</a></li>
		</ul>
	</div>
	<div class="sub-tit text-center">
		<h3 class="semi-title fs-1 fw-bold">식수위생</h3>
		<br>
	 	<h4>깨끗한 식수와 안전한 위생시설 그리고 위생습관에 대한 인식개선 교육을 제공합니다.</h4>
	</div>
	<div class="global-container"align="center">
		<div class="global-image2-1 d-flex justify-content-center mt-5" style="background-image:url('resources/image/global2-1.jpg');">
			<h3 class="align-self-center lh-lg fw-semibold">식수위생시설은 콜레라와 같은 수인성 질병의 확산을 방지하고 <br> 건강한 삶을 유지하는데 필수적입니다</h3>
		</div>
	<div class="content">
		<div class="text-box1 d-flex  justify-content-center flex-column mt-4 ">
			<span class="tit d-flex justify-content-center lh-base fw-bold fs-2 mb-3">
				HomeWork는 지역사회에 깨끗한 식수와 안전한 위생시설을 제공합니다
			</span>
			<div class="txt d-flex align-items-center flex-column mx-auto  fs-4 lh-lg">
				 <p>				 	
           			 식수위생시설은 콜레라와 같은 수인성 질병의 확산을 방지하고 건강한 삶을 유지하는 데 필수적입니다. 
            		 <br>
           			 HomeWork는 지역사회에 깨끗한 식수와 안전한 위생시설을 제공하고, 주민 대상으로 안전한 식수와 위생습관에 대한 인식개선 교육도 제공합니다 
           			 <br> 
           			 깨끗한 식수를 이용하며 콜레라, 피부병과 같은 수인성 질환이 감소하고, 영유아 사망의 주원인인 설사병이 감소합니다.
           			 <br>
           			 여성과 아이들은 먼 거리에서 물을 길어오지 않게 되어 잠재적 성폭력의 위험에서 벗어나고, 교육에 집중할 수 있습니다.
           			 <br>
           			 안전한 물 관리, 위생습관에 대한 인식개선 교육을 통해 지역사회에 나타난 변화가 지속됩니다.
				 </p>
			 	 <p>가정은 새로운 주거환경에서 자립하게 되고, 자립하는 가정을 통해 지역사회는 함께 지속가능한 변화를 경험합니다.</p>
			</div>	
		</div>
		<hr>
		<div class="text-container2-2 d-flex justify-content-center gap-5  ">
			<div class="align-self-center w-35">
				<p style="font-size:32px; color:skyblue; font-weight:bold;">식수개선사업</p>
				<div class="border"></div>
				<h4 class="fs-5 lh-base">
                	깨끗한 식수 시설을 설치해<br>
					지역주민들의 깨끗한 물에 대한 접근성을 향상시키고<br>
					수인성 질병의 발병률을 낮춥니다.
				</h4>
			</div>
			<div class="global-image2-2 w-75 h-75 mt-5" style="background-image:url('resources/image/global2-2.jpg');">
			</div>
		</div>
		
		<hr>
		
		<div class="text-container2-2 d-flex justify-content-center gap-5  ">
			<div class="global-image2-2 w-75 h-75 mt-5" style="background-image:url('resources/image/global2-3.jpg');"></div>
			<div class="align-self-center w-35  ">
				<p style="font-size:32px; color:skyblue; font-weight:bold;">위생증진사업</p>
				<div class="border"></div>
				<h4 class="fs-5 lh-base">
             							 
              							 안전하고 위생적인 화장실을 구축하고, 
             							 <br>
             							 수인성질병을 예방할 수 있는 식수위생에 대한 인식을 개선합니다.
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