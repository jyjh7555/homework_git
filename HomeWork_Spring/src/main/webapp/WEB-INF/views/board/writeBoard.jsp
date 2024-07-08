<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 카카오지도 -->

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
	
	
	
	
	<form method="post" id="form">
		<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
			<div class="d-flex flex-column justify-content-center mb-3 border border-4 w-50 mt-3 " style="width:1200px">
				<div class="m-4 p-4"style="border-bottom: 1px solid gray; border-top: 5px solid black; ">
					<input type="text" class="form-control" name="title" required>
					<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
				</div>
				
				<div align="right" class="right m-4 mb-1 mt-1">
					<button type="button" class="btn">표 없애기(미구현)</button>
				</div> 
				<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
		            <table class="table" >
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">봉사구분</td>
		            		<td width="40%">
			            		<select class="form-control" name="category">
			            			<option value="집짓기">집짓기</option>
			            			<option value="환경개선">환경개선</option>
			            			<option value="긴급/재난">긴급/재난</option>
			            		</select>
		            		</td>
		            		<td style="background:#E3E3E3;width:120px">국내/해외</td>
		            		<td>
			            		<div class="col">
			            			<select class="col-4 form-control" name="boardType" style="display:inline; width:100px">
			            				<option  value="1">국내</option>
			            				<option  value="2">해외</option>
			            			</select>
			            			<select class="col-4 form-control" name="locationNo"style="display:inline; width:100px">
			            				<option value="10">서울(에시)</option>
			            				<option value="20">인천(예시))</option>
			            			</select>
			            		</div>
		            		</td>
		            	</tr>
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">봉사기간</td>
		            		<td>
		            			<div class="input-group mb-3">
								  <input type="date" name="startDate"class="form-control" required>
								  <span class="input-group-text" style="background:white; border:0">~</span>
								  <input type="date" name="endDate"class="form-control" required>
								</div>
		            		
		            		</td>
		            		<td style="background:#E3E3E3;width:120px">봉사시간</td>
		            		<td>
								<div class="input-group mb-3">
									<input type="time" class="form-control" name="startTime" value="00:00">
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="time" class="form-control" name="endTime"value="23:00">
								</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">모집기간</td>
		            		<td>
								<div class="input-group mb-1">
									<input type="date" class="form-control" name="recruitStart" required>
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="date" class="form-control" name="recruitEnd" required>
								</div>
							</td>
		            		<td style="background:#E3E3E3;width:120px">단체여부</td>
		            		<td>
		            			<div class="col m-4 mb-1 mt-2">
		            				<input class="form-check-input " checked  type="radio"  name="groupYn" id="group1" value="Y">
						  			<label class="form-check-label " for="group1">단체가능</label>
									<input class="form-check-input "  type="radio" name="groupYn" id="group2" value="N">
						  			<label class="form-check-label" for="group2">불가능</label>
		            			</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">모집인원</td>
		            		<td><input type="number" class="form-control" name="memberCount" required></td>
		            		<td style="background:#E3E3E3;width:120px">신청인원</td>
		            		<td></td>
		            	</tr>
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">담당자</td>
		            		<td><input class="form-control" type="text" name="mgr" required></td>
		            		<td style="background:#E3E3E3;width:120px">담당자연락처</td>
		            		<td><input class="form-control" type="text" name="mgrPhone" required></td>
		            	</tr>
		            	<tr>
		            		<td style="background:#E3E3E3;width:120px">봉사주소</td>
		            		<td colspan="3">
		            		<div class=col-12>
						        <input name="address" class="form-control w-25 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_postcode" placeholder="우편번호" readonly>
						        <input class="btn btn-outline-secondary btn-sm" type="button" class="btn btn-outline-secondary btn-sm" style="display:inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						        <input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text"  id="sample6_address" placeholder="주소" readonly>
								<input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_detailAddress" placeholder="상세주소">
								
					        </div>
		            		
		            		</td>
		            	</tr>
		            	
		            </table>
		            <!-- <textarea style="width:100%; min-height:100%;  overflow-wrap: break-word;"> -->
		            <textarea class="form-control"style="width:100%; height:500px" name="content">
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
					</textarea>
					
					
				</div>		
			</div>
		</div>
	
	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		<button type="button" class ="btn btm-lg btn-success m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="insertBoard()">게시판 작성</button>
	</div>
	
	</form>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
	
	
	<script>
		const form = document.getElementById('form')
		function insertBoard(){
			form.action = '${contextPath}/insertBoard.bo';
			//form.action = '${contextPath}/test.bo';
			form.submit();
		}
	
		console.log(${loginUser.memberNo});
	
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    //document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	
	</script>
	
</body>
</html>