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
	
	em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
	.checkList li{line-height:35px; list-style-color:skyblue;}
	
	li::marker {
            color: skyblue;
        }
	
	.categoryDomestic{display: inline-block;  margin-right: 2px; 
		width:400px; line-height:50px; margin-left:-11px;  text-align:center;
		}
	a{display:block; color:#555555; font-size: 17px; text-decoration: none;}
	
	area{cursor: pointer;}
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
		 	 	<div align="center" >
 		<Br><Br>
 		<h3>자원 봉사 신청 하기</h3>
 		<Br>
 		
 		<div align="center">
			<ul>
				<li class=categoryDomestic><a style=" border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="domesticBoard">국내봉사일정</a></li>
				<li class=categoryDomestic><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7;border-bottom:3px solid #00AFD7;" href="globalBoard">해외봉사일정</a></li>
				<li class=categoryDomestic><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:2px solid #EEEEEE;border-bottom:3px solid #00AFD7;" href="domestic03.do">게시판 모아보기</a></li>
			</ul>
		</div>
 		
 		
 		<div class="checkList" style="width:1200px; border:1px solid #ddd; text-align:left; margin:30px; padding:15px;">
 		<em>&nbsp;&nbsp; 확인하기!</em>
 		<ul>
 			<li>아래 일정에서 신청하고자 하는 날짜/지역을 선택하세요!</li>
 			<li>일정이 없는 경우엔 지도에 나타나지 않습니다.</li>
 			<li>건축봉사활동 특성상, 현장 상황에 따라 공사는 진행되어도 봉사자 모집은 없을 수 있습니다.</li>
 		</ul>
 		</div>
		<div style="border:8px solid #E3E3E3; width:1232px;">
			<img src="resources/image/korMapGood.png" alt="한국 지도"  usemap="#menuMap" /> 
		
			<map name="menuMap" id="menuMap"> 
		     	<area shape="poly" coords="225,63,238,49,256,65,240,99" alt="서울" data-region="서울" onclick="showTarget(event)"/>
			    <area shape="poly" coords="309,61,324,46,338,60,323,96" alt="강원도" data-region="강원도" onclick="showTarget(event)"/>
			    <area shape="poly" coords="255,125,270,112,285,126,270,158" alt="충청도" data-region="충청도" onclick="showTarget(event)"/>
			    <area shape="poly" coords="292,224,307,208,323,224,307,258" alt="경상도" data-region="경상도" onclick="showTarget(event)"/>   
			</map> 
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
		
		const showTarget = (event)=>{
			event.preventDefault();
			const region = event.target.getAttribute('data-region');
			console.log(region);
			const popUp = window.open('${contextPath}',"_blank",'width=500,height=700,scrollbars=yes,fullscreen')
/* 			$.ajax({
				url:'${contextPath}/regionBoardList.bo',
				data:{b.location:region},
				success: data => {
					console.log(data);
					const tbody = document.querySelector('tbody');
					tbody.innerHTML = '';
					
					for(const b of data) {
						const tr = document.createElement('tr');
						
						const idTd = document.createElement('td');
						idTd.innerText = b.boardId;
						const titleTd = document.createElement('td');
						titleTd.innerText = b.boardTitle;
						const writerTd = document.createElement('td');
						writerTd.innerText = b.nickName;
						const dateTd = document.createElement('td');
						dateTd.innerText = b.boardModifyDate;
						const countTd = document.createElement('td');
						countTd.innerText = b.boardCount;
						
						tr.append(idTd);
						tr.append(titleTd);
						tr.append(writerTd);
						tr.append(dateTd);
						tr.append(countTd);
						
						tbody.append(tr);

					}
				},
				error: data => console.log(data)
			}) */
		}
			
		
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>