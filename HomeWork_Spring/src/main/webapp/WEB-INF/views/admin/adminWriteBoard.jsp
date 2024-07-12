<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    #topAndNavbar {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0.2),
            rgba(0, 0, 0, 0.2)
        ),
        url('resources/image/topImage.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        transition: background-color 0.5s ease;
    }
    
    #voulnteer2 {
        height: 200px;
    }
     .logo {
       display: flex;
       align-items: center;
   }
	.logo-container {
       width: 130px;
       height: 130px;
       background-image: inherit; 
       background-size: cover;
       background-position: center;
       position: relative;
       margin-bottom: 15px;
       margin-left:50px;
   }
   .logo-container img {
       width: 100%;
       height: 100%;
       object-fit: contain;
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

	#container{display:flex; flex-wrap: wrap; width:100%;}
	table{
		text-align: center;
	}
	th {
        border-bottom: 1px solid black;
    }
	 .form-container {
            display: flex;
            justify-content: flex-end;
        }
</style>
<title>관리자게시판</title>
</head>
<body>
	<div class="logo">
       <div class="logo-container">
           <a href="${ contextPath }"><img id="logo-image" src="resources/image/newLogo.png" alt="로고"></a>
           <button type="button" class="btn btn-outline-primary btn-lg" onclick="goBack()">관리자 홈</button>
        </div>
    </div>
	<h1 align="center"> 관리자페이지 </h1>
	<br>
	<h3 align="center">[국내게시판 관리]</h3>
    <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3">
        <div class="d-flex flex-column justify-content-center mb-3 border border-1 border-info w-60 mt-3" style="width:1400px;">
        	<div class="m-4 p-4"style="border-bottom: 1px solid gray; border-top: 5px solid black; ">
				제목:<input type="text" class="form-control" name="title" required>
				<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
			</div>
			<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
            <table id="adminWriteBoard">
				<tr>
		            		<td style="border-bottom:1px solid white; background:#E3E3E3;width:120px">봉사구분</td>
		            		<td width="35%">
			            		<select class="form-control" id="category"name="category">
			            			<option value="집짓기">집짓기</option>
			            			<option value="환경개선">환경개선</option>
			            			<option value="긴급/재난">긴급/재난</option>
			            		</select>
		            		</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px;">국내/해외</td>
		            		<td>
			            		<div class="col" align="left">
			            			<select class="col-4 form-control" id="boardType"name="boardType" style="display:inline; width:100px;">
			            				<option  value="1">국내</option>
			            				<option  value="2">해외</option>
			            			</select>
			            			<select class="col-4 form-control" id="locationNo"name="locationNo"style="display:inline; width:100px">
			            				<option value="10">서울</option>
			            				<option value="20">인천</option>
			            				<option value="30">경기도</option>
			            				<option value="40">강원도</option>
			            				<option value="50">충청도</option>
			            				<option value="60">전라도</option>
			            				<option value="70">경상도</option>
			            			</select>
			            		</div>
		            		</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사기간</td>
		            		<td>
		            			<div class="input-group mb-3">
								  <input  type="date" name="startDate"class="form-control"required>
								  <span class="input-group-text" style="background:white; border:0">~</span>
								  <input  type="date" name="endDate"class="form-control" required>
								</div>
		            		
		            		</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사시간</td>
		            		<td>
								<div class="input-group mb-3">
									<input type="time" class="form-control"  name="startTime" value="00:00">
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="time" class="form-control" name="endTime"value="23:00">
								</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">모집기간</td>
		            		<td>
								<div class="input-group mb-1">
									<input type="date" class="form-control" name="recruitStart" required>
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="date" class="form-control" name="recruitEnd" required>
								</div>
							</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">단체여부</td>
		            		<td>
		            			<div class="col m-4 mb-1 mt-2">
		            				<input class="form-check-input " checked  type="radio"  name="groupYn" id="group1" value="Y">
						  			<label class="form-check-label " for="group1">단체가능</label>
						  			<br>
									<input class="form-check-input "  type="radio" name="groupYn" id="group2" value="N">
						  			<label class="form-check-label" for="group2">불가능</label>
		            			</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">모집인원</td>
		            		<td><input type="number" class="form-control" name="memberCount" required></td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">신청인원</td>
		            		<td></td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">담당자</td>
		            		<td><input class="form-control" type="text" name="mgr" required></td>
		            		<td style="background:#E3E3E3;width:120px">담당자연락처</td>
		            		<td><input class="form-control" type="text" name="mgrPhone" required></td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사주소</td>
		            		<td colspan="3">
		            		<div class=col-12 align="left">
						        <input name="address" class="form-control w-25 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_postcode" placeholder="우편번호" readonly>
						        <input class="btn btn-outline-secondary btn-sm" type="button" class="btn btn-outline-secondary btn-sm" style="display:inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						        <input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text"  id="sample6_address" placeholder="주소" readonly>
								<input name="address" class="form-control w-50 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_detailAddress" placeholder="상세주소">
								
					        </div>
		            		
		            		</td>
		            	</tr>
		            	
		            </table>
		            <textarea class="form-control"style="width:100%; height:500px" name="content">
		            [공지사항]
		            입력해주세요!
					
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
	
		//국내,해외 타입 설정시 지역,봉사구분 변경하게하기
		const bType = document.getElementById('boardType');
		const locationNo = document.getElementById('locationNo');
		const category = document.getElementById('category');
		console.log(bType);
		bType.addEventListener("change",function(){
			if(this.value== 1){
				locationNo.innerHTML = '<option value="10">서울</option>'+
								 '<option value="20">인천</option>'+
								 '<option value="30">경기도</option>'+
								 '<option value="40">강원도</option>'+
								 '<option value="50">충청도</option>'+
								 '<option value="60">전라도</option>'+
								 '<option value="70">경상도</option>';
				category.innerHTML = '<option value="집짓기">집짓기</option>'+
									'<option value="환경개선">환경개선</option>'+
									'<option value="긴급/재난">긴급/재난</option>';
			}else{
				locationNo.innerHTML = '<option value="210">아시아</option>'+
										 '<option value="220">아메리카</option>'+
										 '<option value="230">북아메리카</option>'+
										 '<option value="240">남아메리카</option>'+
										 '<option value="250">중동</option>'+
										 '<option value="260">오세아니아</option>'+
				 						 '<option value="270">유럽</option>';
				
				category.innerHTML = '<option value="주거환경개선">주거환경개선</option>'+
									'<option value="식수지원">식수지원</option>'+
									'<option value="도시슬럼지원">도시슬럼지원</option>';
			}
		});
		
		//모집기간 날짜 반대로 입력 못하게 하기
		const recStartDate = document.getElementsByName('recruitStart')[0];
		const recEndDate = document.getElementsByName('recruitEnd')[0];
		recStartDate.addEventListener('change',function(){
			
			if(recStartDate.value ==''){
				recStartDate.style.border = '2px solid red';
				
			}else{
				recStartDate.style.border = '1px solid #ced4da';
			}
			

			const dateTypeStart = new Date(recStartDate.value);
			const dateTypeEnd = new Date(recEndDate.value);
			const sumDateSec = dateTypeStart.getTime() - dateTypeEnd.getTime();
			const resultDate = sumDateSec / (24*60*60*1000);

			if(isNaN(resultDate) || resultDate >0){
				const year = recStartDate.value.substring(0,4);
				const month = recStartDate.value.substring(5,7);
				const day = recStartDate.value.substring(8,10);

				recEndDate.value = year + '-' + month + '-' +day ;
				recEndDate.style.border = '1px solid #ced4da';
			}
		});
		recEndDate.addEventListener('change',function(){
			if(recEndDate.value ==''){
				recEndDate.style.border = '2px solid red';
				
			}else{
				recEndDate.style.border = '1px solid #ced4da';
			}
			
			
			const dateTypeStart = new Date(recEndDate.value);
			const dateTypeEnd = new Date(recStartDate.value);
			const sumDateSec = dateTypeStart.getTime() - dateTypeEnd.getTime();
			const resultDate = sumDateSec / (24*60*60*1000);

			if(isNaN(resultDate) || resultDate <0){
				const year = recEndDate.value.substring(0,4);
				const month = recEndDate.value.substring(5,7);
				const day = recEndDate.value.substring(8,10);
				recStartDate.value = year + '-' + month + '-' +day ;
				recStartDate.style.border = '1px solid #ced4da';
			}
		});
		
		
		//봉사기간 날짜 반대로 입력 못하게 하기
		const startDate = document.getElementsByName('startDate')[0];
		const endDate = document.getElementsByName('endDate')[0];
		startDate.addEventListener('change',function(){
			
			if(startDate.value ==''){
				startDate.style.border = '2px solid red';
				
			}else{
				startDate.style.border = '1px solid #ced4da';
			}
			
			
			const dateTypeStart = new Date(startDate.value);
			const dateTypeEnd = new Date(endDate.value);
			const sumDateSec = dateTypeStart.getTime() - dateTypeEnd.getTime();
			const resultDate = sumDateSec / (24*60*60*1000);

			if(isNaN(resultDate) || resultDate >0){
				const year = startDate.value.substring(0,4);
				const month = startDate.value.substring(5,7);
				const day = startDate.value.substring(8,10);

				endDate.value = year + '-' + month + '-' +day ;
				endDate.style.border = '1px solid #ced4da';
			}
		});
		endDate.addEventListener('change',function(){
			
			if(endDate.value ==''){
				endDate.style.border = '2px solid red';
				
			}else{
				endDate.style.border = '1px solid #ced4da';
			}
			
			const dateTypeStart = new Date(endDate.value);
			const dateTypeEnd = new Date(startDate.value);
			const sumDateSec = dateTypeStart.getTime() - dateTypeEnd.getTime();
			const resultDate = sumDateSec / (24*60*60*1000);

			if(isNaN(resultDate) || resultDate <0){
				const year = endDate.value.substring(0,4);
				const month = endDate.value.substring(5,7);
				const day = endDate.value.substring(8,10);
				startDate.value = year + '-' + month + '-' +day ;
				startDate.style.border = '1px solid #ced4da';
			}
		});
		
		
	
		//보드삽입 폼설정
		const form = document.getElementById('form')
		function insertBoard(){
			form.action = '${contextPath}/insertBoard.bo';
			//form.action = '${contextPath}/test.bo';
			form.submit();
		}
	
	
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
