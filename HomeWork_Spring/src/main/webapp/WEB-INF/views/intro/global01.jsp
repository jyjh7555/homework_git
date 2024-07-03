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
		<h3 class="fs-2 fw-bold">주거환경 개선</h3>
		<br>
	 	<h4>소박하지만 안전한 주거환경에서 거주할 수 있도록 새로운 주택을 건축하거나,주택을 보수합니다.</h4>
	</div>
	<div align="center">
		
		<div class="global-image1 d-flex justify-content-center mt-5 " style="background-image:url('resources/image/global1-1.jpg');">
			<h3 class="align-self-center lh-lg fw-semibold">Home Work는 농촌 지역과 도시 지역의 주거빈곤을 극복하기 위해 <br> 주거환경개선사업을 수행합니다</h3>
		</div>
		<div class="content" align="left" >
			<div class="text-container1 d-flex justify-content-evenly mt-n5 ">
				<div class="align-self-center mt-15 w-25">
					<h3 class="fs-5 fw-semibold">주택 신축 사업</h3>
					<h4 class="fs-6">각국에는 해비타트의 표준 주택모델이 있습니다.<br>
						지역에서 조달가능한 자재를 활용하여 적정주택을 제공합니다.<br>
						지역정부 및 마을 대표와 함께 논의하여 신축 사업의 대상자를<br>
						선정합니다.
					</h4>
				</div>
				<div class="global-image2" style="background-image:url('resources/image/global1-2.PNG');">
				</div>
			</div>
			
			<hr>
			
			<div style="display:inline-block; width:500px; margin-left:100px;padding:10px;">
			<p>home work가짓는 주택은 입주가정의 자립과 건강한 공동체의 기반이 됩니다.
				자원봉사자들은 희망의 집짓기 현장에서 땀과 열정을 나누는 데 직접 참여할 수 있습니다.</p>
			</div>
			<br>
			
			
			
			
			<div style="margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="imageDiv" align="center" ><img src="resources/image/dome01Image2.jpg"/></div>
				<div class="domeCon" align="left" style="width:500px; margin-left:50px;">
					<em>4월 건물 기초만들기</em>
					<div class="border"></div>
					
					<p>대지 위의 설계대로 건물터를 잡고 가장 중요한 기초를 만듭니다.
						대부분의 경우 기초를 만들면서 1층 바닥 부분까지 콘크리트 구조를
						완성하기 때문에 땅 아래에서 올라오는 습기와 냉기를 차단하기 위해
						비닐도 깔고 단열재도 꼼꼼하게 설치해야 합니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="domeCon" align="right" style="width:500px; margin-right:50px;">
					<em>5월 콘크리트 골조 만들기</em>
					<div class="border"></div>
					
					<p>1층 바닥 위에 벽과 기둥, 계단실의 위치를 잡고 거푸집을 만들어 철근과
						각종 파이프를 설치하고 2층 바닥까지 거푸집을 완성한 후 레미콘을 부어 넣어
						1층 기둥, 벽, 계단실과 2층 바닥이 일체형 구조가 되도록 합니다.
						2층 바닥이 완성되어 단단하게 굳은 후에는 2층 구조에 필요한
						벽을 설치하고 레미콘을 부어 넣어 완성합니다.
						3층 구조인 경우, 위 과정을 반복해줍니다.</p>
				 </div>
				<div class="imageDiv" align="center" >
					<img src="resources/image/dome01Image3.jpg"></img>
				</div>
			</div>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="imageDiv" align="center" ><img src="resources/image/dome01Image4.jpg"/></div>
				<div class="domeCon" align="left" style="width:500px; margin-left:50px;">
					<em>6월 목조 벽체 만들기</em>
					<div class="border"></div>
					
					<p>해비타트 주택은 철근 콘크리트 구조와 목재 구조가 함께 만난 형태이며
						친환경적인 소재인 목재를 사용하여 주택의 품질을 높이고 또 많은
						자원봉사자들이 함께 참여할 수 있어서 한 마디로 일거양득!
						콘크리트 벽이 아닌 곳에는 목재로 만든 벽이 설치됩니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="domeCon" align="right" style="width:500px; margin-right:50px;">
					<em>7월 지붕 만들기(트러스 제작)</em>
					<div class="border"></div>
					
					<p>2층 벽까지 완성되면 지붕을 만들 수가 있으며, 지붕의 골격을 담당하는
						삼각형처럼 생긴 트러스를 만들어 촘촘히 벽 위에 세우고
						합판으로 지붕을 덮은 이후에 비나 눈이 오더라도 끄떡없도록 방수기능이 있는
						아스팔트 펠트를 깔고, 마지막으로 최종 마감자재인
						아스팔트 슁글이라는 색깔이 입혀진 재료를 덮으면 지붕이 완성됩니다.</p>
				 </div>
				<div class="imageDiv" align="center" >
					<img src="resources/image/dome01Image5.jpg"></img>
				</div>
			</div>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="imageDiv" align="center" ><img src="resources/image/dome01Image6.jpg"/></div>
				<div class="domeCon" align="left" style="width:500px; margin-left:50px;">
					<em>8월~9월 외부 마감하기</em>
					<div class="border"></div>
					
					<p>1~3층 벽체의 외부 마감은 먼저 목조 벽체 위에 합판을 박아 튼튼하게
						벽을 고정시키고, 외부의 습기는 차단하고 내부의 습기를 밖으로 배출시키는
						투습방수지를 합판 위에 붙인 다음에 비닐 사이딩이라는 컬러와 무늬가 있는
						마감재로 외부를 마감, 이와 함께 각종 창문을 설치합니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="domeCon" align="right" style="width:500px; margin-right:50px;">
					<em>9월~10월 내부 마감하기</em>
					<div class="border"></div>
					
					<p>내부 벽체의 나무와 나무 사이에 공간에는 단열재를 꼼꼼하게 넣어
						더위와 추위에 이겨내도록 합니다. 단열재를 설치한 이후에는
						석고보드를 벽체를 설치해서 기본적인 마감과 동시에 내화구조를 완성합니다.
						석고보드 위에는 최종마감인 벽제를 바릅니다.
						이와 더불어 내부에 전기 및 난방, 상하수도 설비,
						주방 가구를 설치하여 건물 내부 작업을 마칩니다.</p>
				 </div>
				<div class="imageDiv" align="center" >
					<img src="resources/image/dome01Image7.jpg"></img>
				</div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div class="imageDiv" align="center" ><img src="resources/image/dome01Image8.jpg"/></div>
				<div class="domeCon" align="left" style="width:500px; margin-left:50px;">
					<em>11월 조경 및 주변 정리하기</em>
					<div class="border"></div>
					
					<p>내부가 끝나면 건물 외부를 정리합니다. 나무와 꽃을 심어 주변을 가꾸고
						빗물 및 건물에서 나오는 오수를 외부의 관과 연결하고 가로등 설치,
						건물 주변을 포장을 마치고 주차장 선까지 그리면 최종적으로
						해비타트 주택이 완성됩니다.</p>
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
 		
 		
 		<Script>
 			const volunteer = () =>{
 				
 			}
 		</Script>
</body>
</html>