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
	
	
	<form method="post" id="updateForm">
		<input type="hidden" name="bId" value="${b.boardNo }">
		<input type="hidden" name="page" value="${page }">
	</form>
	
	
	
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
		            <div style="white-space: pre-wrap;">${b.content }</div>
					
					
				</div>
					<!-- 여기부터 댓글 -->
					<c:if test="${b.boardType ==3 }">
						<div class="bd-example m-4 p-2" style="background: #fbfbfb;">
							<div>
								<b>${loginUser.nickName}</b>님! 댓글을 남겨보세요!!
							</div>
							<div class="form-floating input-group">
							  <textarea class="form-control" id="replyContent" style="height: 100px"></textarea>
							  <label for="replyContent"></label>
							  <button type="button"class="input-group-text" id="replyButton" >댓글남기기</button>
							</div>
							<div class="m-3" >
							<table>
								<c:forEach items="${list}" var="r">
									<tr>
									<td width="150px">${r.nickName }</td>
									<td style="width:60%; font-size:12px; padding-top:15px">${r.reDate}</td>
									<td width="150px"></td>
									<td width="150px">아이콘 여기다넣자</td>
								</tr>
								<tr style="border-bottom: 1px solid #E3E3E3;">
									<td colspan="3">${r.content }</td>
								</tr>	
								</c:forEach>
								
							</table>						
							</div>
						</div>
					</c:if>
					<!-- 댓글끝-->
				
				
				<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		        	<c:if test="${loginUser.status =='Y' }">
		        		<button type="button" class ="btn btm-lg btn-light m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="editBoardFn()">수정하기</button>
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
			const form = document.getElementById('updateForm');
			function editBoardFn(){
				form.action ='editBoard.bo';
				form.submit();
			}
			
			
			const replyButton = document.getElementById('replyButton');
			if(${b.boardType == '3'}){
				
				
				replyButton.addEventListener('click',function(){
					 $.ajax({
						url: '${contextPath}/insertReply.bo',
						data: {content:document.getElementById('replyContent').value,
							   nickName:'${loginUser.nickName}',
							   boardNo:'${b.boardNo}',
							   memberNo:'${loginUser.memberNo}'},
						success:data=>{
							console.log('성공~');
						},
						error:data=> console.log('실패~')
					}); 
				});
			}
		}
	</script>
	
</body>
</html>