<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<b>${b.title }</b>
			</div>
			
			
			<div class="bd-example m-4 p-2" style="border-top: 2px solid black;">
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
	            		<td>${v.recruitStart}</td>
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
	            <!-- <textarea style="width:100%; min-height:100%;  overflow-wrap: break-word;"> -->
	            <div style="white-space: pre-wrap;">${b.content }</div>
				
			</div>
			<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
	        	<button type="button" class ="btn btm-lg btn-secondary m-5" style="width:250px; border-radius:16px;font-size:24px;" onclick="location.href='${contextPath}/domesticList.bo?page=${page}'">목록보기</button>
			</div>		
		
		</div>
	</div>
	
	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
	
	
</body>
</html>