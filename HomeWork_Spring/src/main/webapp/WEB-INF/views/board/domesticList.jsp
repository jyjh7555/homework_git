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

		 	<div class="domestic-container container text-center mt-5">
			 		<div class="bd-example">
						<table class="table table-hover">
							<thead>
								<tr class="pb-3">
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

		 	
		 	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
<<<<<<< HEAD
		<div class="d-flex flex-column justify-content-center mb-3 border border-4 w-50 mt-3 " style="width:1400px;">
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="10%">글 번호</th>
							<th width="10%">지역</th>
							<th width="30%">글 제목</th>
							<th width="10%">모집인원</th>
							<th width="20%">작성날짜</th>
							<th width="10%">조회수</th>
	          			</tr>
	          		</thead>
	         		<tbody> 
	         			<c:forEach items="${ list }" var="b">
	         				<tr>
	            			<td>${b.boardNo }</td>
	            			<td>${b.location }</td>
	            			<td>${b.title }</td>
	            			<td>몇명할까</td>
	            			<td>${b.updateDate }</td>
	            			<td>${b.boardCount }</td>
	          			</tr>
	         			</c:forEach>
	          			
	          		</tbody>
	        	</table>
       		 <nav aria-label="Standard pagination example" style="float: right;">
=======
		<div class="d-flex flex-row justify-content-end mb-3  w-50 mt-3 " style="width:1400px;">
>>>>>>> refs/remotes/origin/kimkiryong
        		<ul align="center"class="pagination">
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
        	<button class="btn btn-sm btn-outline-success ms-3" style="width:70px; height:40px; border-radius:16px;font-size:12px;" type="button" onclick="location.href='${ contextPath }/writeBoard.bo'">글 작성</button>
        </c:if>

		 	</div>
			


		</div>
 	  </div>
      	  
      	  
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>

	
	<script>
		window.onload = ()=>{
			const tbody = document.querySelector('tbody');
			const tds = tbody.querySelectorAll('td');
			for(const td of tds) {
				td.addEventListener('click',function(){
					const trTds = this.parentElement.querySelectorAll('td');
					const boardId = trTds[0].innerText;
					location.href="${contextPath}/selectBoard.bo?bId=" + boardId + "&page=" + ${pi.currentPage};
				})
			}
		}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>