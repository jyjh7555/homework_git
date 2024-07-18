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
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-bottom:3px solid #00AFD7" href="global01.in">주거환경 개선</a></li>
			<li class=categoryDomestic><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7;" href="global02.in">식수 위생</a></li>
			<li class=categoryDomestic><a style="border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7" href="global03.in">도시슬럼 지원</a></li>
		</ul>
	</div>
	<div class="sub-tit text-center">
		<h3 class="semi-title fs-1 fw-bold">도시슬럼 지원</h3>
		<br>
	 	<h4>슬럼화된 도시의 주거환경을 안전하고 쾌적하게 보수하고, 공공 식수 시설과 화장실을 제공합니다.</h4>
	</div>
	<div class="global-container"align="center">
		<div class="global-image2-1 d-flex justify-content-center mt-5 " style="background-image:url('resources/image/global3-1.jpg');">
			<h3 class="align-self-center lh-lg fw-semibold">주거권 확보는 불안정성에서 벗어나<br>
															내일을 꿈꾸고 빈곤에서 벗어나 자립할 수 있도록 돕습니다.												
		    </h3>
		</div>
	<div class="content">
		<div class="text-box1 d-flex  justify-content-center flex-column mt-4 ">
			<span class="tit d-flex justify-content-center lh-base fw-bold fs-2 mb-3">
				전 세계에 10억명이 넘는 인구가 도시 슬럼가에 거주하고 있습니다.
			</span>
			<div class="txt d-flex align-items-center flex-column mx-auto lh-lg fs-4">
				 <p>
				 	 전 세계에 10억명이 넘는 인구가 도시 슬럼가에 거주하고 있습니다. 도시의 주거비가 상승함에 따라, 
  					 <br>
				 </p>
				 <p>				 	
           			  저소득층은 공공 인프라가 부족하고, 주택이 밀집되어 있는 지역, 슬럼가로 몰리게 됩니다. 해비타트는 기후에 적합하고, 재난시에도 안전한 주택으로
            		 <br>
           			 보수하고, 공공 식수시설과 화장실을 제공합니다. 강제 이주의 두려움속에 사는 주민들을 위해 주거권을 옹호하고, 안정된 삶의 지속성을 높이도록 돕습니다 
           			 <br> 
           			 홍수 등 재난에도 범람하지 않는 화장실을 구축하여 수인성질병의 확산을 방지하고, 창문이 생긴 안락한 주택 덕분에 호흡기 질환이 개선되어 건강이 증진됩니다.
           			 <br>
           			 밀집된 주거지의 화재발생 및 인명피해를 예방하기 위해 화재 방지 및 모의 대피훈련을 실시합니다. 
           			 <br>
           			 주거 취약계층의 거주권 확보는 불안정성에서 벗어나 내일을 꿈꾸고 빈곤에서 벗어나 자립하도록 하는 중요한 기반입니다.
				 </p>
			</div>	
		</div>
		<hr>
		<div class="text-container2-2 d-flex justify-content-center gap-5  ">
			<div class="align-self-center w-35  ">
				<p style="font-size:28px; color:skyblue; font-weight:bold;">공공식수위생시설 지원</p><div class="border"></div>
				<h4 class="fs-5 lh-base">
                	안전한 식수 이용이 가능하도록 <br>
                	공용 화장실과 식수펌프를 설치합니다.	
				</h4>
			</div>
			<div class="global-image2-2 w-75 h-75 mt-5 mb-2" style="background-image:url('resources/image/global3-2.jpg');">
			</div>
		</div>
		
		<hr>
		
		<div class="text-container2-2 d-flex justify-content-center gap-5  ">
			<div class="global-image2-2 w-75 h-75 mt-5" style="background-image:url('resources/image/global3-3.jpg');"></div>
			<div class="align-self-center w-35  ">
				<p style="font-size:32px; color:skyblue; font-weight:bold;">보도건축 및 배수로 개선</p>
				<div class="border"></div>
				<h4 class="fs-5 lh-base">
              							 우기에도 길이 침수되지 않고 아이들과 주민들이 
             							 <br>
             							 안전하게 이동할 수 있도록 슬럼 내 보도를 건축하고
             							 <br>
             							 배수로를 정비합니다.
             							 
				</h4>
			</div>
		</div>
		
		<hr>
		
		<div class="text-container2-2 d-flex justify-content-center gap-5  ">
			<div class="align-self-center w-35  ">
				<p style="font-size:32px; color:skyblue; font-weight:bold;">폐기물 처리 인식 증진</p>
				<div class="border"></div>
				<h4 class="fs-5 lh-base">
                	       깨끗한 마을 환경 조성을 위해서는 폐기물 처리에 대한  <br>
                		   인식증진이 필수적입니다. 올바른 폐기법을 안내하고 <br>
                		   관리할 수 있는 역량을 증진하여 마을의 환경을 개선합니다.
            
				</h4>
			</div>
			<div class="global-image2-2 w-75 h-75 mt-5 mb-2" style="background-image:url('resources/image/global3-4.jpg');">
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