<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


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
					<b>${b.title }</b>
				</div>
				
				
				<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
					<c:if test="${v != null }">
			            <table class="table" >
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">봉사구분</td>
			            		<td width="">${b.title }</td>
			            		<td style="background:#E3E3E3;width:120px">국내/해외</td>
			            		<td>
				            		<c:if test="${b.boardType == 1 }">국내</c:if>
				            		<c:if test="${b.boardType == 2 }">해외</c:if>
			            		</td>
			            	</tr>
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">봉사기간</td>
			            		<td>${v.startDate} ~ ${v.endDate}</td>
			            		<td style="background:#E3E3E3;width:120px">봉사시간</td>
			            		<td>${v.startTime} ~ ${v.endTime} </td>
			            	</tr>
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">모집기간</td>
			            		<td>${v.recruitStart} ~ ${v.recruitEnd}</td>
			            		<td style="background:#E3E3E3;width:120px">단체여부</td>
			            		<td>${v.groupYn}</td>
			            	</tr>
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">모집인원</td>
			            		<td>${v.memberCount }</td>
			            		<td style="background:#E3E3E3;width:120px">신청인원</td>
			            		<td>미구현멤버인원vo노생성</td>
			            	</tr>
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">담당자</td>
			            		<td>${v.mgr}</td>
			            		<td style="background:#E3E3E3;width:120px">담당자번호</td>
			            		<td>${v.mgrPhone }</td>
			            	</tr>
			            	<tr>
			            		<td style="background:#E3E3E3;width:120px">봉사주소</td>
			            		<td colspan="3">${v.address }</td>
			            	</tr>
			            	
			            </table>
					</c:if>
		            <!-- <textarea style="width:100%; min-height:100%;  overflow-wrap: break-word;"> -->
		            <div style="white-space: pre-wrap;">${b.content }${v.endDate }</div>
					
					
				</div>
					<!-- 여기부터 댓글 -->
					<c:if test="${b.boardType ==3 }">
						<div class="bd-example m-4 p-2" style="background: #fbfbfb;">
							<div>
								<b>${loginUser.nickName}</b>님! 댓글을 남겨보세요!!
							</div>
							<div class="form-floating input-group">
							  <textarea class="form-control" placeholder=""id="replyContent" style="height: 100px"></textarea>
							  <label for="replyContent"></label>
							  <button type="button"class="input-group-text" id="replyButton" >댓글남기기</button>
							</div>
							<div class="m-3" >
							<table >
								<tbody id="replyTable">
									<c:forEach items="${list}" var="r">
										<tr>
											<td width="150px"><b>${r.nickName }</b></td>
											<td style="width:60%; font-size:12px; padding-top:15px">${r.reDate}</td>
											<td width="150px"></td>
											<c:if test="${r.memberNo ==loginUser.memberNo }"><td width="150px"><a class="fs-6">수정</a>/<a class="fs-6">삭제</a></td></c:if>
										</tr>
										<tr style="border-bottom: 1px solid #E3E3E3;">
											<td colspan="3">${r.content }</td>
																					
										</tr>	
										<input type="hidden" name="replyNo" value="${r.replyNo }"/>
									</c:forEach>
								</tbody>
							</table>						
							</div>
						</div>
					</c:if>
					<!-- 댓글끝-->
				
				
				<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		        	<c:if test="${loginUser.status =='Y' }">
		        		<form method="post" action="editBoard.bo" id="updateForm">
							<input type="hidden" name="bId" value="${b.boardNo }">
							<input type="hidden" name="page" value="${page }">
			        		<button class ="btn btm-lg btn-light m-5" style="width:250px; border-radius:16px;font-size:24px;">수정하기</button>
						</form>
		        	</c:if>
		        	
		        	<button type="button" class ="btn btm-lg btn-secondary m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="location.href='${contextPath}/domestic.bo?page=${page}'">목록보기</button>
				</div>		
				
		</div>
	</div>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
	
	
	<script>
		window.onload = () =>{
			
			//후기게시판 댓글 관련
			const replyButton = document.getElementById('replyButton');
			const replyTable = document.getElementById('replyTable');
			if(${b.boardType == '3'}){
				replyButton.addEventListener('click',function(){
					 $.ajax({
						url: '${contextPath}/insertReply.bo',
						data: {content:document.getElementById('replyContent').value,
							   nickName:'${loginUser.nickName}',
							   boardNo:'${b.boardNo}',
							   memberNo:'${loginUser.memberNo}'},
						success:data=>{
							console.log(data, typeof data);
							
							document.getElementById('replyContent').value='';
							replyTable.innerHTML='';
							let reviewList = '';
							let check ='';
							
							for(r of data){
								console.log(r.replyNo);
								console.log('여기위가 내가체크하려는거임');
								if(r.memberNo == ${loginUser.memberNo}){
									check ='<td width="150px"><a class="fs-6">수정</a>/<a class="fs-6">삭제</a></td>'; 
								}else{
									check = '';
								}
								reviewList =
									'<tr>'+
										'<td width="150px"><b>'+ r.nickName + '</b></td>'+
										'<td style="width:60%; font-size:12px; padding-top:15px">'+r.updateDate+'</td>'+
										'<td width="150px"></td>'+
										check+
									'</tr>'+
									'<tr style="border-bottom: 1px solid #E3E3E3;">'+
										'<td colspan="3">'+r.content+'</td>'+
									'</tr>'+
									'<input type="hidden" name="replyNo" value="'+r.replyNo+'"/>';		
									
									
								replyTable.innerHTML += reviewList;
								
							}
							whynot();
						},
						error:data=> console.log('실패~')
					}); 
				});
				
				whynot();
				//후기게시판 내 댓글 수정하기
				
				function whynot(){
				let replyAlters = document.querySelectorAll('td a');

				
					replyAlters.forEach(replyAlter=>{
						let beforeCon =replyAlter.parentElement.parentElement.nextElementSibling.children[0];
						let afterUpdateDate =replyAlter.parentElement.previousElementSibling.previousElementSibling;
						let beforeConVal =replyAlter.parentElement.parentElement.nextElementSibling.children[0].innerText;
						console.log(replyAlter.innerText);
						
						if(replyAlter.innerText == '수정'){
							replyAlter.addEventListener('click',function(){
								if(this.innerText=='수정'){
									this.innerText='완료';
									this.nextElementSibling.innerText='취소';
									const contentTd = this.parentElement.parentElement.nextElementSibling.children[0];
									let beforeContent = contentTd.innerText;
									contentTd.innerHTML = '<textarea class="form-control" placeholder="" style="height: 100px">'+beforeContent+'</textarea>';
									
								}else if(this.innerText=='완료'){
									const afterContent = this.parentElement.parentElement.nextElementSibling.children[0].children[0];
									const updateReplyNo = this.parentElement.parentElement.nextElementSibling.nextElementSibling.value;
									console.log(updateReplyNo);
									console.log(afterContent.parentElement);
									$.ajax({
										url: '${contextPath}/updateReply.bo',
										data: {content:afterContent.value,replyNo:updateReplyNo},
										success:data=>{
											console.log(data);
											beforeCon.innerHTML='<td colspan="3">'+data.content+'</td>';
											afterUpdateDate.innerText = data.updateDate;
											//afterContent.parentElement.innerHTML='<td colspan="3">'+afterContent.value+'</td>';
											this.innerText='수정';
											this.nextElementSibling.innerText='삭제';
										},
										error:data=>console.log(data)
									});
								}
							});
						}else if(replyAlter.innerText =='삭제'){
							
							replyAlter.addEventListener('click',function(){
								const updateReplyNoTag = this.parentElement.parentElement.nextElementSibling.nextElementSibling;
								const updateReplyNo = this.parentElement.parentElement.nextElementSibling.nextElementSibling.value;
								if(replyAlter.innerText =='삭제'){
									$.ajax({
										url:'${contextPath}/deleteReply.bo',
										data:{replyNo:updateReplyNo},
										success:data=>{
											console.log(data);
											console.log(updateReplyNoTag)
											updateReplyNoTag.previousElementSibling.remove();
											updateReplyNoTag.previousElementSibling.remove();
											updateReplyNoTag.remove();
										},
										error:data=>console.log('안됨')
									});
									
									
								}else if(replyAlter.innerText =='취소'){
									console.log(updateReplyNo);
									this.innerText='삭제';
									this.previousElementSibling.innerText='수정';
									$.ajax({
										url:'${contextPath}/selectOneReply.bo',
										data:{replyNo:updateReplyNo},
										success:data=>{
											beforeCon.innerHTML='<td colspan="3">'+data.content+'</td>';
										},
										error:data=>console.log('안됨')
									});	
								
								}
							})						
						}
					});
					
				};
			};
			
			
			
			
		}
	</script>
	
</body>
</html>