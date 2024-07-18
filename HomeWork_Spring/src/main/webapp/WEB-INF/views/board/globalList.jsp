<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
	
	.container {
		font-family: 'Pretendard-Regular';
	}
	
	#voulnteer2 {
		height: 200px;
	}
	
	em{
		font-size:30px;
		color:skyblue;
	}
	.checkList li{line-height:35px; list-style-color:skyblue;}
	
	li::marker {
            color: skyblue;
        }
	
	.categoryDomestic{display: inline-block;  margin-right: 2px; 
		width:400px; line-height:50px; margin-left:-11px;  text-align:center;
		}
	a{display:block; color:#555555; font-size: 17px; text-decoration: none;}
	
	.region-title-container {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    width: 100%;
	}
	
	.title-wrapper {
	    display: flex;
	    align-items: center;
	    width: 100%;
	    max-width: 500px; 
	    margin-left:100px;
	   
	}
	
	#region-title {
	    font-size: 40px;
	    font-weight: bold;
	    color: #505050;
	    padding: 5px 15px;
	    display: inline-block;
	    margin-left: 50px;
	    margin-bottom:20px;
	    
	}
	
	.domestic-btn {
	    width: 80px;  
	    height: 30px; 
	    display: flex;
	    justify-content: center;
	    align-items:center;
	    text-align: center;
	    line-height: 1.5; 
	    padding: 0;
	    font-size: 14px; 
	    white-space: nowrap;
	    border-radius:5px;
	}
	
	.domestic-btn:hover {
		background-color:#787878;
		font-weight:bold;
		color:white;
	}
	img {
		margin:auto;
	}
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
		 	
 		<div class="container" style="min-height:1000px">
 			<div class="mt-5 ms-0 me-0 ps-0 pe-0 w-100"align="center">
				<ul>
					<li class="categoryDomestic"><a style="border-left:2px solid #EEEEEE; border-top:2px solid #EEEEEE;border-right:3px solid #00AFD7; border-bottom:3px solid #00AFD7;" href="domestic.bo">국내봉사일정</a></li>
					<li class="categoryDomestic"><a style=" border-top:3px solid #00AFD7; border-left:3px solid #00AFD7; border-right:3px solid #00AFD7;" href="global.bo">해외봉사일정</a></li>
					<li class="categoryDomestic"><a style=" border-top:2px solid #EEEEEE; border-right:2px solid #EEEEEE;border-left:3px solid #00AFD7;border-bottom:3px solid #00AFD7;" href="review.bo">후기 게시판</a></li>
				</ul>
			</div>
 		
 		
	 		<div class="checkList ms-0 me-0 mb-3 w-100" style="text-align:left;">
	 		<em>&nbsp;&nbsp; 확인하기!</em>
	 		<ul>
	 			<li>아래 일정에서 신청하고자 하는 날짜/지역을 선택하세요!</li>
	 			<li>일정이 없는 경우엔 지도에 나타나지 않습니다.</li>
	 			<li>건축봉사활동 특성상, 현장 상황에 따라 공사는 진행되어도 봉사자 모집은 없을 수 있습니다.</li>
	 		</ul>
	 		</div>
 			<div class="mapAndBoard border border-2 align-items-center ">
 				<div class="w-75">
					<img src="resources/image/globalMap1.png" alt="대륙 지도"  usemap="#menuMap" /> 
					<map name="menuMap" id="menuMap"> 
				     	<area shape="rect" coords="820,184,868,206" alt="아시아" data-region="아시아" onclick="showTarget(event)"/>
				     	<area shape="rect" coords="592,324,660,348" alt="아프리카" data-region="아메리카" onclick="showTarget(event)"/>
				     	<area shape="rect" coords="223,184,305,235" alt="북아메리카" data-region="북아메리카" onclick="showTarget(event)"/>
				     	<area shape="rect" coords="355,375,435,427" alt="남아메리카" data-region="남아메리카" onclick="showTarget(event)"/>
				     	<area shape="rect" coords="901,430,999,452" alt="오세아니아" data-region="오세아니아" onclick="showTarget(event)"/>
				     	<area shape="rect" coords="605,186,670,206" alt="유럽" data-region="유럽" onclick="showTarget(event)"/>
					</map> 
				</div>
		 		<div class="region-title-container mt-4 mb-2">
				    <div class="title-wrapper">
				        <button type="button" class="domestic-btn border border-1 mt-5 mb-n5" onclick="location.href='${contextPath}/global.bo'">전체 보기</button>
				        <span id="region-title">해외 전체</span>
				    </div>
				</div>
				
				<div class="domestic-container container text-center me-5">
			 		<div class="bd-example">
						<table class="table table-hover">
							<thead>
								<tr class="pb-3">
									<th class="w-10">글 번호</th>
									<th class="w-10">지역</th>
									<th class="w-10">글 제목</th>
									<th class="w-10">현재 신청 인원 / 모집 인원</th>
									<th class="w-10">모집기간</th>
									<th class="w-10">조회수</th>
									<th class="w-10">신청</th>
			          			</tr>
			          		</thead>
			         		<tbody> 
			         			<c:forEach items="${ list }" var="b">
			         				<tr>
				            			<td>${b.boardNo }</td>
				            			<td>${b.location }</td>
				            			<td>${b.title }</td>
				            			<td>${b.nowCount} / ${b.fullCount}</td>
				            			<td>${b.recruitStart} ~ ${b.recruitEnd}</td>
				            			<td>${b.boardCount }</td>
				            			<td><a class="btn btn-secondary" href="${ contextPath }/insertVolunteer.vo?boardNo=${b.boardNo}">신청하기</a></td>
			          				</tr>
			         			</c:forEach>
			          		</tbody>
			        	</table>
	       			</div>

					 	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
							<div class="d-flex flex-row justify-content-end mb-3  w-50 mt-3 " style="width:1400px;">
					       		<ul align="center"class="pagination">
						            <li class="page-item ${pi.currentPage == pi.startPage ? 'disabled' : '' }">
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
						            	<li class="page-item ${p == pi.currentPage ? 'active' : '' }"><a class="page-link" href="${ goNum }">${ p }</a></li>		            	
						            </c:forEach>
						            <li class="page-item ${ pi.currentPage == pi.endPage ? 'disabled' : '' }">
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
 	  		</div>
		</div> 
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>
   <div id="fixedBtn">
	  <jsp:include page="../common/fixedBtn.jsp"/>
   </div>

	${pi.currentPage}
	<script>
		window.onload = ()=>{
				selectBoard();	
		}
		
		function selectBoard(){
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
		
		const showTarget = (event) => {

		    event.preventDefault();
		    const region = event.target.getAttribute('data-region');
	          const regionTitle = document.getElementById('region-title');
	          if (regionTitle) {
	              regionTitle.innerText = region;
	          }
		    loadRegionBoard(region,1);  // 초기 페이지는 1로 설정
		}

		function loadRegionBoard(region, page) {
		    $.ajax({
		        url: '${contextPath}/regionBoardList.bo',
		        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
		        data: { region: region, page: page },
		        success: data => {
		        	updateTable(data.list);	         
		            updatePagination(data.pi2, region);
		            selectBoard();

		        },
		        error: error => console.log("Error:", error)
		    });
		}
		

		function updateTable(list) {
		    const tbody = document.querySelector('tbody');
		    tbody.innerHTML = '';
		    for (const b of list) {
		        const tr = document.createElement('tr');
		        const createTd = (text) => {
		            const td = document.createElement('td');
		            td.textContent = text;
		            return td;
		        };
		        tr.appendChild(createTd(b.boardNo));
		        tr.appendChild(createTd(b.location));
		        tr.appendChild(createTd(b.title));
		        tr.appendChild(createTd(b.nowCount + '/' + b.fullCount));
		        tr.appendChild(createTd(b.recruitStart + '~' + b.recruitEnd));
		        tr.appendChild(createTd(b.boardCount));
		        const applyTd = document.createElement('td');
		        const applyButton = document.createElement('a');
		        applyButton.className = 'btn btn-secondary';
		        applyButton.textContent = '신청하기';
		        applyTd.appendChild(applyButton);
		        tr.appendChild(applyTd);
		        applyButton.href = `${contextPath}/insertVolunteer.vo?boardNo=${b.boardNo}`;
		        tbody.appendChild(tr);
		    }
		}
		
	      function updatePagination(pi2, region) {
	          const paginationContainer = document.querySelector('.d-flex.justify-content-center.align-items-center.vh-30.row-gap-3');

	           
	          if (paginationContainer) {
	             if(pi2.currentPage == pi2.startPage){
	                console.log(true);
	             } else {
	                console.log(false);
	             }
	             
	               let paginationHTML = `
	                  <div class="d-flex flex-row justify-content-end mb-3 w-50 mt-3" style="width:1400px;">
	                      <ul align="center" class="pagination">`;
	             
	                         paginationHTML += '<li class="page-item ' + (pi2.currentPage == 1 ? 'disabled' : '') + '">';
	                         
	                         paginationHTML += `<a class="page-link" href="javascript:void(0)" onclick="loadRegionBoard('${'$'}{region}', '${'$'}{pi2.currentPage - 1}')"aria-label="Previous">
	                                  <span aria-hidden="true">&laquo;</span>
	                              </a>
	                          </li>`;
	                             

	               
	                          
	                          
	                          
	                          
	              for (let p = pi2.startPage; p <= pi2.endPage; p++) {
	            	  paginationHTML += '<li class="page-item ' + (p == pi2.currentPage  ? 'active' : '') + '">';
	                  paginationHTML += `<a class="page-link" href="javascript:void(0)" onclick="loadRegionBoard('${'$'}{region}', '${'$'}{p}')">${'$'}{p}</a> </li>`;
	                  
	              }
	              
	                    paginationHTML += '<li class="page-item ' + (pi2.currentPage == pi2.maxPage ? 'disabled' : '') + '">';
	               		paginationHTML += `
	                              <a class="page-link" href="javascript:void(0)" onclick="loadRegionBoard('${'$'}{region}', '${'$'}{pi2.currentPage + 1}')" aria-label="Next">
	                                  <span aria-hidden="true">&raquo;</span>
	                              </a>
	                          </li>
	                      </ul>
	                  </div>`;
	            
	              paginationContainer.innerHTML = paginationHTML;
	            
	            
	              
	              
	              
	              
	            
	              
	          }
	      }
		
			
		
	</script>
	
	
</body>
</html>