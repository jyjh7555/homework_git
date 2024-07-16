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
	    font-family: 'GowunBatang-Regular';  
	}
	
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
	#container {
		font-family: 'Pretendard-Regular';
	}
	
	#second-container {
		font-family: 'Pretendard-Regular';
	}
	
	#voulnteer2 {
		height: 200px;
	}
	
	.categoryDomestic{display: inline-block;  margin-right: 2px; 
      width:400px; line-height:50px; margin-left:-11px;  text-align:center;
      }
   a{display:block; color:#555555; font-size: 17px; text-decoration: none;}
	
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
				
			<div id="second-container" class="mt-5 ms-0 me-0 ps-0 pe-0 w-100"align="center">
				<ul>
					<li class="categoryDomestic"><a style=" border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-bottom:3px solid #00AFD7;" href="domestic.bo">국내봉사일정</a></li>
					<li class="categoryDomestic"><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7;border-bottom:3px solid #00AFD7;" href="global.bo">해외봉사일정</a></li>
					<li class="categoryDomestic"><a style=" border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="review.bo">후기 게시판</a></li>
				</ul>
			</div>
				
				
		 	<div id="container" class="domestic-container container text-center mt-5">
			 		<div class="bd-example">
						<table class="table table-hover">
							<thead>
								<tr class="pb-3">
									<th width="10%">글 번호</th>
									<th width="10%">게시글타입</th>
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
				<div class="d-flex flex-row justify-content-end mb-3  w-50 mt-3 " style="width:1400px;">
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