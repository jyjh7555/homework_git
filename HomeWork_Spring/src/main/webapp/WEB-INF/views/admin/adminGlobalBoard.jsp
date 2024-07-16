<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
	<h3 align="center">[해외게시판 관리]</h3>
    <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3">
        <div class="d-flex flex-column justify-content-center mb-3 border border-1 border-info w-50 mt-3" style="width:1400px;">
            <table id="globalBoardTable" class="table table-bordered border-primary" table-hover ">
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
      			<nav aria-label="Standard pagination example" style="center;">
	        		<ul align="center"class="pagination">
			            <li class="page-item disabled">
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
			            	<li class="page-item ${ p == pi.currentPage ? 'active' : '' }""><a class="page-link" href="${ goNum }">${ p }</a></li>
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
		        	<button class="btn btn-sm btn-outline-success ms-3" style="width:70px; height:40px; border-radius:16px;font-size:12px;" type="button" onclick="location.href='${ contextPath }/adminWriteBoard.ad'">글 작성</button>
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
					location.href="${contextPath}/adminSelectBoard.ad?bId=" + boardId + "&page=" + ${pi.currentPage};
				})
			}
		}
        
        function goBack() {
            location.href="admin.me";
        }

    </script>
</body>
</html>
