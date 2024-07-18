<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기적을 짓는 봉사 - HomeWork</title>
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
	    font-family: 'GowunBatang-Regular';
	}
	
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
	#form {
		font-family: 'Pretendard-Regular';
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
					<input type="text" class="form-control" name="title" value="${b.title }"required>
					<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
					<input type="hidden" name="boardNo" value="${b.boardNo}">
					<input type="hidden" name="page" value="${page}">
				</div>
				
				<div align="left" class="right m-4 mb-1 mt-1">
					<input class="form-check-input" type="checkbox" <c:if test="${b.boardType ==3}"> checked</c:if> onclick="reviewCheckFn()" value="reviewCheck" id="reviewCheck">
				  <label class="form-check-label" for="reviewCheck" >후기게시판 작성하기</label> 
				</div> 
				<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
		            <table class="table" id="editTable">
		            	<tr>
		            		<td style="border-bottom:1px solid white; background:#E3E3E3;width:120px">봉사구분</td>
		            		<td width="35%">
			            		<select class="form-control" id="category"name="category">
			            		
			            			<option value="집짓기"<c:if test="${v.category=='집짓기'}">selected</c:if> >집짓기</option>
			            			<option value="환경개선"<c:if test="${v.category=='환경개선'}">selected</c:if>>환경개선</option>
			            			<option value="긴급/재난"<c:if test="${v.category=='긴급/재난'}">selected</c:if>>긴급/재난</option>
			            		</select>
		            		</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">국내/해외</td>
		            		<td>
			            		<div class="col">
			            			<select class="col-4 form-control" id="boardType"name="boardType" style="display:inline; width:100px">
			            				<option  value="1"<c:if test="${b.boardType == '1' }">selected</c:if>>국내</option>
			            				<option  value="2"<c:if test="${b.boardType == '2' }">selected</c:if>>해외</option>
			            				<option style="display:none" value="3" <c:if test="${b.boardType == '3' }">selected</c:if>>후기</option>
			            			</select>
			            				<select class="col-4 form-control" id="locationNo"name="locationNo"style="display:inline; width:100px">
					            			<c:if test="${b.boardType=='1' }">
					            				<option value="10" <c:if test="${b.locationNo =='10' }"> selected </c:if>>서울</option>
					            				<option value="20" <c:if test="${b.locationNo =='20' }"> selected </c:if>>인천</option>
					            				<option value="30" <c:if test="${b.locationNo =='30' }"> selected </c:if>>경기도</option>
					            				<option value="40" <c:if test="${b.locationNo =='40' }"> selected </c:if>>강원도</option>
					            				<option value="50" <c:if test="${b.locationNo =='50' }"> selected </c:if>>충청도</option>
					            				<option value="60" <c:if test="${b.locationNo =='60' }"> selected </c:if>>전라도</option>
					            				<option value="70" <c:if test="${b.locationNo =='70' }"> selected </c:if>>경상도</option>
					            			</c:if>
					            			<c:if test="${b.boardType=='2' }">
					            				<option value="210" <c:if test="${b.locationNo =='210' }">selected</c:if>>아시아</option>
					            				<option value="220" <c:if test="${b.locationNo =='220' }">selected</c:if>>아프리카</option>
					            				<option value="230" <c:if test="${b.locationNo =='230' }">selected</c:if>>북아메리카</option>
					            				<option value="240" <c:if test="${b.locationNo =='240' }">selected</c:if>>남아메리카</option>
					            				<option value="250" <c:if test="${b.locationNo =='250' }">selected</c:if>>중동</option>
					            				<option value="260" <c:if test="${b.locationNo =='260' }">selected</c:if>>오세아니아</option>
					            				<option value="270" <c:if test="${b.locationNo =='270' }">selected</c:if>>유럽</option>
					            			</c:if>
					            				
					            			<c:if test="${b.boardType=='3' }">
						            			<option value="1000" selected>-</option>
					            			</c:if>
				            			</select>
			            		</div>
		            		</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사기간</td>
		            		<td>
		            			<div class="input-group mb-3">
								  <input  type="date" name="startDate"class="form-control" value="${v.startDate }">
								  <span class="input-group-text" style="background:white; border:0">~</span>
								  <input  type="date" name="endDate"class="form-control" value="${v.endDate }">
								</div>
		            		
		            		</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사시간</td>
		            		<td>
								<div class="input-group mb-3">
									<input type="time" class="form-control"  name="startTime" value="${v.startTime }">
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="time" class="form-control" name="endTime"value="${v.endTime }">
								</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">모집기간</td>
		            		<td>
								<div class="input-group mb-1">
									<input type="date" class="form-control" name="recruitStart" value="${v.recruitStart }">
									<span class="input-group-text" style="background:white; border:0">~</span>
									<input type="date" class="form-control" name="recruitEnd" value="${v.recruitEnd }">
								</div>
							</td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">단체여부</td>
		            		<td>
		            			<div class="col m-4 mb-1 mt-2">
		            				<input class="form-check-input " <c:if test="${v.groupYn =='Y' }">checked</c:if>  type="radio"  name="groupYn" id="group1" value="Y">
						  			<label class="form-check-label " for="group1">단체가능</label>
									<input class="form-check-input " <c:if test="${v.groupYn =='N' }">checked</c:if> type="radio" name="groupYn" id="group2" value="N">
						  			<label class="form-check-label" for="group2">불가능</label>
		            			</div>
							</td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">모집인원</td>
		            		<td><input type="number" class="form-control" name="memberCount" value="${v.memberCount}"></td>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">신청인원</td>
		            		<td></td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">담당자</td>
		            		<td><input class="form-control" type="text" name="mgr" value="${v.mgr }"></td>
		            		<td style="background:#E3E3E3;width:120px">담당자연락처</td>
		            		<td><input class="form-control" type="text" name="mgrPhone" value="${v.mgrPhone }"></td>
		            	</tr>
		            	<tr>
		            		<td style="border-bottom:1px solid white;background:#E3E3E3;width:120px">봉사주소</td>
		            		<td colspan="3">
		            		<div class=col-12>
						        <input name="address" value="${address[0] }"class="form-control w-25 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_postcode" placeholder="우편번호" readonly>
						        <input class="btn btn-outline-secondary btn-sm" type="button" class="btn btn-outline-secondary btn-sm" style="display:inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						        <input name="address" value="${address[1] }"class="form-control w-50 m-4 mt-1 mb-1" type="text"  id="sample6_address" placeholder="주소" readonly>
								<input name="address" value="${address[2] }"class="form-control w-50 m-4 mt-1 mb-1" type="text" style="display:inline-block;" id="sample6_detailAddress" placeholder="상세주소">
								
					        </div>
		            		
		            		</td>
		            	</tr>
		            	
		            </table>
		            <div class="editor_head col-12">
		            	
		            	<button type="button" id="bold"style="border:1px solid gray; font-weight: bold;"><b>가</b></button>
		            	<button type="button" id="italic"style="border:1px solid gray; font-style:italic;">가</button>
		            	<button type="button" id="underline"style="border:1px solid gray; text-decoration:underline;">가</button>
		            	<select id="fontSize">
					        <option value="10px">10px</option>
					        <option value="12px">12px</option>
					        <option value="14px">14px</option>
					        <option selected value="16px">16px</option>
					        <option value="18px">18px</option>
					        <option value="20px">20px</option>
					        <option value="24px">24px</option>
					        <option value="28px">28px</option>
					        <option value="32px">32px</option>
					        <option value="36px">36px</option>
					        <option value="40px">40px</option>
					    </select>
					    <button type="button" id="alignLeft"style="border:1px solid gray;">왼쪽정렬</button>
					    <button type="button" id="alignCenter"style="border:1px solid gray;">중앙정렬</button>
					    <button type="button" id="alignRight"style="border:1px solid gray;">오른쪽정렬</button>
		            	
		            		
		            
		            
		            
		            </div>
		            <div id="editDiv" class="form-control workseditor-editor"style="width:100%; min-height:500px" contenteditable="true">
					${b.content }
					</div>
					<input type="hidden" name="content">
				</div>		
			</div>
		</div>
	
	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		<button type="button" class ="btn btm-lg btn-success m-5" style="width:150px; border-radius:16px;font-size:24px;" onclick="updateBoard()">수정완료</button>
		<button type="button" class ="btn btm-lg btn-secondary m-5" style="width:150px; border-radius:16px;font-size:24px;" onclick="javascript:history.back();">뒤로가기</button>
		<button type="button" class ="btn btm-lg btn-danger m-5" style="width:150px; border-radius:16px;font-size:24px;" id="deleteModal">삭제하기</button>
	</div>
	
	</form>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
	
	
	<!--  프로젝트 모달 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="modalChoice">
			<div class="modal-dialog" role="document">
	    		<div class="modal-content rounded-3 shadow">
	      			<div class="modal-body p-4 text-center">
	        			<h3 class="mb-0">정말로 삭제하시겠습니까?</h3>
	        			<p class="mb-0">삭제 후 게시글은 복구할 수 없습니다.</p>
	      			</div>
	      			<div class="modal-footer flex-nowrap p-0">
	        			<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0 border-end" id="delete">
	        				<strong>네</strong>
	        			</button>
	        			<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0" data-bs-dismiss="modal">아니오</button>
	      			</div>
	    		</div>
	  		</div>
		</div>
	
	
	
	<script>
		
		window.onload =()=>{
			reviewCheckFn();		//후기게시판 처음에 가져올때 한번 실행하자
		}
		
		
		//작성할때 텍스트 변화 주기
		document.getElementById('bold').addEventListener('click', function() {
			applyStyle('bold');
			
	    });
	
	    document.getElementById('italic').addEventListener('click', function() {
	    	applyStyle('italic');
	    });
	
	    document.getElementById('underline').addEventListener('click', function() {
	    	applyStyle('underline');
	    });
	    
	    document.getElementById('fontSize').addEventListener('change', function() {
	    	applyStyle('fontSize');
	    });
	    
	    document.getElementById('alignCenter').addEventListener('click', function() {
	    	applyStyle('alignCenter');
	    });
	    document.getElementById('alignLeft').addEventListener('click', function() {
	    	applyStyle('alignLeft');
	    });
	    document.getElementById('alignRight').addEventListener('click', function() {
	    	applyStyle('alignRight');
	    });
		
	
	
		//작성할때 텍스트 변화 함수
		function applyStyle(style){
			const selection = window.getSelection();  //이거 내가 드래그한 텍스트 파일인듯
			console.log(selection);		//파일이라기보단. range 로 나오는거 확인!!
			
			
			
			
			if(selection.rangeCount>0){
				//console.log(selection.rangeCount); //0 또는 1만 존재하는군
				const range = selection.getRangeAt(0);	//뭐여이건
		        const selectedText = range.extractContents();	//내용을 가져온다
		        let span = document.createElement('span');
		        
		        const commonAncestorContainer = range.commonAncestorContainer;
		        let parentElement = commonAncestorContainer.nodeType === 1 
	            					? commonAncestorContainer 
	            					: commonAncestorContainer.parentNode;
		        
		        switch(style) {
	            case 'bold':
	            	
	            	span.style.fontWeight = parentElement.style.fontWeight === 'bold' ? 'normal' : 'bold';
	                break;
	            case 'italic':
	            	span.style.fontStyle = parentElement.style.fontStyle === 'italic' ? 'normal' : 'italic';
	                break;
	            case 'underline':
	            	span.style.textDecoration = parentElement.style.textDecoration === 'underline' ? 'none' : 'underline';
	                break;
	            case 'fontSize':
	            	span.style.fontSize =  document.getElementById('fontSize').value;
	                break;
	            case 'alignCenter':
	            	/* console.log(parentElement.tagName);
	            	console.log(parentElement.tagName == 'DIV');
	            	console.log(parentElement.parentElement); */
	            	
	            	while(parentElement.tagName=='SPAN'|| parentElement.tagName=='IMG'){
	            		console.log(parentElement.tagName);
	            		parentElement = parentElement.parentElement;
	            		console.log(parentElement);
	            	}
	            	parentElement.style.textAlign = 'center';
	                break;
	            case 'alignLeft':
	            	
	            	while(parentElement.tagName=='SPAN'|| parentElement.tagName=='IMG'){
	            		console.log(parentElement.tagName);
	            		parentElement = parentElement.parentElement;
	            		console.log(parentElement);
	            	}
	            	parentElement.style.textAlign = 'left';
	                break;
	            case 'alignRight':
	            	while(parentElement.tagName=='SPAN' || parentElement.tagName=='IMG'){
	            		console.log(parentElement.tagName);
	            		parentElement = parentElement.parentElement;
	            		console.log(parentElement);
	            	}
	            	parentElement.style.textAlign = 'right';
	                break;
	                
		        }
		        
		        span.appendChild(selectedText);
		        range.insertNode(span);
		        //selection.removeAllRanges();		//내가선택한영역 제거하기 난 필요없다
				}else{
					
			}
		}
	
		
	
		//리뷰게시판 작성하려구해~
		
		const reviewCheck = document.getElementById('reviewCheck');
		function reviewCheckFn(){
			if(reviewCheck.checked){
				document.getElementById('editTable').style.display = 'none';
			}else{
				document.getElementById('editTable').style.display = 'block';
			}
		};
	
	
		//게시글에 사진 넣기
		const editDiv = document.getElementById('editDiv');
		console.log(editDiv.innerHTML);
		console.log(editDiv.innerText);
		editDiv.addEventListener('paste',(event)=>{
			console.log(editDiv.innerHTML);
			console.log(editDiv.innerText);
			
			
		})
		editDiv.addEventListener('drop',(event)=>{
			/* console.log('2');
			console.log(event);
			console.log(event.dataTransfer);
			console.log(event.dataTransfer.files);
			console.log(typeof event.dataTransfer.files);
			console.log(event.dataTransfer.files[0].name);
			console.log(typeof event.dataTransfer.files[0]); */
			event.preventDefault();
			
			const file = event.dataTransfer.files[0];
			uploadFile(file);
		})
		
		function uploadFile(file) {
            const reader = new FileReader();		//객체부여하고
            reader.readAsDataURL(file);				//내가 드랍한 파일객체만든거를 넣어,파일의데이터를나타내는 URL을생성한다
            reader.onloadend = () => {				// 내가 읽든안읽은 자동으로실행, load메소드쓰면 읽어와야 실행
                const img = document.createElement('img');	//여기서부턴 내가아는 이미지태그생성하는거임
                img.src = reader.result;
                img.style.maxWidth = '100%';
                editDiv.appendChild(img);
            }
        }
		
	
	
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
		
		
		const form = document.getElementById('form')
		console.log(document.getElementsByName('locationNo')[0]);
		function updateBoard(){
			form.action = '${contextPath}/updateBoard.bo';
			document.getElementsByName('content')[0].value= editDiv.innerHTML;
			if(reviewCheck.checked){
				document.getElementsByName('boardType')[0].value= '3';
				document.getElementById('category').value= null;
				document.getElementsByName('locationNo')[0].value= '1000';
				
				document.getElementsByName('startDate')[0].value='2000-01-01';
				document.getElementsByName('endDate')[0].value='2000-01-01';
				document.getElementsByName('recruitStart')[0].value='2000-01-01';
				document.getElementsByName('recruitEnd')[0].value='2000-01-01';
				document.getElementsByName('memberCount')[0].value=0;
				document.getElementsByName('mgr')[0].value=null;
				document.getElementsByName('mgrPhone')[0].value=null;
				document.getElementsByName('address')[0].value=null;
				
			}
			form.submit();
		}
		
		
		
		document.getElementById('deleteModal').addEventListener('click',()=>{
			$('#modalChoice').modal('show');
		});

		document.getElementById('delete').addEventListener('click',()=>{
			form.action= '${contextPath}/deleteBoard.bo';
			form.submit();
		});
		
	/* 
		//보드삽입 폼설정 일단 주석, 후기게시판 바로남기기할수있어서
		function insertBoard(){
			form.action = '${contextPath}/insertBoard.bo';
			document.getElementsByName('content')[0].value= editDiv.innerHTML;
			//form.action = '${contextPath}/test.bo';
			if(reviewCheck.checked){
				document.getElementsByName('boardType')[0].value= '3';
				document.getElementById('category').value= null;
				document.getElementsByName('locationNo').value= '1000';
				
				document.getElementsByName('startDate')[0].value='2000-01-01';
				document.getElementsByName('endDate')[0].value='2000-01-01';
				document.getElementsByName('recruitStart')[0].value='2000-01-01';
				document.getElementsByName('recruitEnd')[0].value='2000-01-01';
				document.getElementsByName('memberCount')[0].value=0;
				document.getElementsByName('mgr')[0].value=null;
				document.getElementsByName('mgrPhone')[0].value=null;
				document.getElementsByName('address')[0].value=null;
				
			}
			form.submit();
		}
	 */
	
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