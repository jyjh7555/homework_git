<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
	
	
	
	
	
	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		<div class="d-flex flex-column justify-content-center mb-3 border border-4 w-50 mt-3 ">
			<div class="m-4 p-4"style="border-bottom: 1px solid gray; border-top: 5px solid black; ">
				제목		
			</div>
			
			
			<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
	            <table class="table" >
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">봉사구분</td>
	            		<td width="">집짓	기()</td>
	            		<td style="background:#E3E3E3;width:120px">국내/해외</td>
	            		<td>국내()</td>
	            	</tr>
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">봉사기간</td>
	            		<td>날짜 두개 삽입</td>
	            		<td style="background:#E3E3E3;width:120px">봉사시간</td>
	            		<td>시분초로 두개 나타내기</td>
	            	</tr>
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">모집기간</td>
	            		<td>날짜 두개 삽입</td>
	            		<td style="background:#E3E3E3;width:120px">단체여부</td>
	            		<td>y/n체크 실게시판은'단체가능'스트링</td>
	            	</tr>
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">모집인원</td>
	            		<td>인원수</td>
	            		<td style="background:#E3E3E3;width:120px">신청인원</td>
	            		<td>count하기</td>
	            	</tr>
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">담당자</td>
	            		<td>인원수</td>
	            		<td style="background:#E3E3E3;width:120px">담당자번호</td>
	            		<td>count하기</td>
	            	</tr>
	            	<tr>
	            		<td style="background:#E3E3E3;width:120px">봉사주소</td>
	            		<td colspan="3">서울시 노어ㅜㄴ구 상계1동</td>
	            	</tr>
	            	
	            </table>
	            <!-- <textarea style="width:100%; min-height:100%;  overflow-wrap: break-word;"> -->
	            <div style="white-space: pre-wrap;">
	            [ 공지사항 ]
		 1. 신청 후 당사에서 별도의 연락이 없거나 배치가 안되었어도 해당 일에 봉사를 와주시면 실적 등록을 해 드
		 리오니 배치 전에라도 봉사 오시면 됩니다. 
		 2. 자원봉사 활동 확인 서류는 당사에서 발급해 드리지 않습니다. 센터 방문 또는 인터넷 발급하여 받아주세요.
		 (여유없이 신청하시는 분들은 담당자 부재로 서류 받지 못할 수도 있으니 일주일 정도 여유있게 신청하시고 오세요)
		
		[봉사 안내]
		당사는 장애인에게 일자리를 통한 영적인 안정과 자존감의 회복, 재정적인 자립을 할 수 있도록 돕기 위하여 설립 및 운영되는 시설입니다.
		기업 및 개인에게 물건을 기증 받아 착한 가격으로 소비자에게 제공하며, 그 수익금으로 장애인에게 일자리를 제공하고 있습니다.
		매장 운영과 관련하여 기증 물품 진열, 정리 등을 도와주실 자원봉사자를 아래와 같이 모집합니다.
		
		1. 기간 : 상시 모집
		2. 날짜 : 매주 월요일~토요일
		3. 봉사시간 : 평일 오전 9시~오후 1시 / 토요일 및 공휴일 오전 9시 30분 ~오후 1시30분 (4시간)
		4. 자원봉사내용 : 기증물품 분류 및 매장 진열, 매장 청소 등 장애인의 업무 동행
		5. 모집인원 : 5 명 / 일  (65세 미만 이신 분)
		6. 주소 : 서울시 강서구 강서로 294, 1층 (우장산역 1번 출구에서 300 미터 / 강서 미즈메디병원 도로 반대편)
		
		[기타 사항]
		1. 강서점(우장산역) / 가양점(가양역) 두개 매장에서 봉사자를 모집하고 있습니다. 신청하신 지역 잘 확인하시어 봉사 와주시길 부탁드립니다.
		2. 특별한 연락 없이 신청 후 미 참여하실 경우 이후 봉사는 신청 거부될 수 있습니다.
		3. 봉사를 확정하고 불참하실 경우에는 사전에 미리 담당자에게 알려주시길 부탁드립니다.
		4. 일일 당사에서 승인해 드릴 수 있는 최대 봉사 인정 시간은 4시간입니다. 
		5. 봉사 당일 매장 제품 구입시 10% 할인 혜택을 드립니다.
		</div>
				
			</div>		
		
		</div>
	</div>
	
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
	
	
</body>
</html>