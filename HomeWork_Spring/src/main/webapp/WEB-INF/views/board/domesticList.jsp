<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	
	#voulnteer2 {
		height: 200px;
	}
</style>
<title>Insert title here</title>
</head>
	<body>
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
			<div class="bd-example w-75 d-flex justify-content-center">
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="10%">글 번호</th>
							<th width="10%">지역</th>
							<th width="30%">글 제목</th>
							<th width="10%">작성자</th>
							<th width="20%">작성일자</th>
							<th width="10%">조회수</th>
	          			</tr>
	          		</thead>
	         		<tbody> 
	         			<c:forEach items="${ list }" var="b">
	         				<tr>
	            			<td>${b.boardNo }</td>
	            			<td>${b.location }</td>
	            			<td>${b.title }</td>
	            			<td>관리자</td>
	            			<td>${b.updateDate }</td>
	            			<td>${b.boardCount }</td>
	          			</tr>
	         			</c:forEach>
	          			
	          		</tbody>
	        	</table>
	       	</div>
       		 <nav aria-label="Standard pagination example" style="float: right;">
        		<ul class="pagination">
        		
	            <li class="page-item">
	            	<c:url var="goBack" value="${ loc }">
        			<c:param name="page" value="${ pi.currentPage -1 }"/>
        			</c:url>
	            	<a class="page-link" href="${ goBack }" aria-label="Previous">
	            		<span aria-hidden="true">&laquo;</span>
	              	</a>
	            </li>
	            <c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="p">
	            	<c:url var="goNum" value="${ loc }">
	            		<c:param name="page" value="${ p }"/>
	            	</c:url>
	            	<li class="page-item"><a class="page-link" href="${ goNum }">${ p }</a></li>
	            </c:forEach>
	            <li class="page-item">
	            	<c:url var="goNext" value="${ loc }">
	            		<c:param name="page" value="${ pi.currentPage +1 }"/>
	            	</c:url>
	            	<a class="page-link" href="${ goNext }" aria-label="Next">
	            		<span aria-hidden="true">&raquo;</span>
	            	</a>
	            </li>
	    	</ul>
        </nav>
	<c:if test="${ !empty loginUser }">
        	<button class="btn btn-outline-success" type="button" onclick="location.href='${ contextPath }/writeBoard.bo'">WRITE BOARD</button>
        </c:if>

	
	<script>
		window.onload = ()=>{
			const tbody = document.querySelector('tbody');
			const tds = tbody.querySelectorAll('td');
			for(const td of tds) {
				td.addEventListener('click',function(){
					const trTds = this.parentElement.querySelectorAll('td');
					const boardId = trTds[0].innerText;
					console.log(boardId);
					location.href="${contextPath}/selectBoard.bo?bId=" + boardId + "&page=" + ${pi.currentPage};
				})
			}
		}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>