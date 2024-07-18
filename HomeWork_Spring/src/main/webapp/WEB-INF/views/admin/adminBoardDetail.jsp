<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
	
</style>
<title>관리자게시판 - HomeWork</title>
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
	<h3 align="center">[게시판 관리]</h3>
	
	
	<div id="container" class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		<div class="d-flex flex-column justify-content-center mb-3 border border-4 w-50 mt-3 ">
				<div class="m-4 p-4"style="border-bottom: 1px solid gray; border-top: 5px solid black; ">
					<b>${b.title }</b>
				</div>	
				</div>
				</div>
    <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3">
        <div class="d-flex flex-column justify-content-center mb-3 border border-1 border-info w-50 mt-3" style="width:1600px;">
        <form method="post" id="admimVolunteerInfo">
        	<input type="hidden" name="boardNo" value="${b.boardNo }">
			<input type="hidden" name="boardType" value="${b.boardType }">
			<input type="hidden" name="page" value="${page}">
			<c:if test="${v != null }">
            <table id="domesticBoardDetail">
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
	            		<td>20</td>
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
            	<div style="white-space: pre-wrap;">${b.content }</div>
	            <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
	        		<button type="button" id="editButton" class ="btn btn-info m-5" style="width:150px; border-radius:16px;font-size:20px;">수정하기</button>
	        		<button type="button" class ="btn btn-secondary m-5" style="width:150px; border-radius:16px;font-size:20px;" onclick="location.href='${contextPath}/admindomestic.ad'">목록보기</button>
	        		<button type="button" id="deleteModal" class ="btn btn-danger m-5" style="width:150px; border-radius:16px;font-size:20px;">삭제하기</button>
				</div>
				<c:if test="${b.boardType ==3 }">
					<div class="bd-example m-4 p-2" style="background: #fbfbfb;">
						<div>
							<b>댓글</b>
						</div>
						<div class="form-floating input-group">
						  <textarea class="form-control" placeholder=""id="replyContent" style="height: 100px"></textarea>
						  <label for="replyContent"></label>
						  <button type="button"class="input-group-text" id="replyButton" >댓글남기기</button>
						</div>
						<div class="m-3" >
						<table id="replyTable">
							<c:forEach items="${list}" var="r">
								<tr>
									<td width="150px"><b>${r.nickName }</b></td>
									<td style="width:60%; font-size:12px; padding-top:15px">${r.reDate}</td>
									<td width="150px"></td>
									<td width="150px"><a class="fs-6">삭제</a></td>
								</tr>
								<tr style="border-bottom: 1px solid #E3E3E3;">
									<td colspan="3">${r.content }</td>
																			
								</tr>	
								<input type="hidden" name="replyNo" value="${r.replyNo }"/>
							</c:forEach>
							
						</table>
						</div>
					</div>
				</c:if>
					
	            
				</form>
        </div>
    </div>
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
    function goBack() {
        location.href = "admin.me";
    }
    
    window.onload = () => {
        const replyButton = document.getElementById('replyButton');
        const replyTable = document.getElementById('replyTable');

        function setDeleteEventListeners() {
            let replyAlters = document.querySelectorAll('td a');

            replyAlters.forEach(replyAlter => {
                let beforeCon = replyAlter.parentElement.parentElement.nextElementSibling.children[0];
                let beforeConVal = replyAlter.parentElement.parentElement.nextElementSibling.children[0].innerText;

                if (replyAlter.innerText == '삭제') {
                    replyAlter.addEventListener('click', function () {
                        const updateReplyNoTag = this.parentElement.parentElement.nextElementSibling.nextElementSibling;
                        const updateReplyNo = updateReplyNoTag.value;

                        $.ajax({
                            url: '${contextPath}/adminDeleteReply.ad',
                            data: { replyNo: updateReplyNo },
                            success: data => {
                                updateReplyNoTag.previousElementSibling.remove();
                                updateReplyNoTag.previousElementSibling.remove();
                                updateReplyNoTag.remove();
                            },
                            error: data => console.log('안됨')
                        });
                    });
                } else if (replyAlter.innerText == '취소') {
                    console.log(updateReplyNo);
                    this.innerText = '삭제';
                    this.previousElementSibling.innerText = '수정';
                    $.ajax({
                        url: '${contextPath}/selectOneReply.bo',
                        data: { replyNo: updateReplyNo },
                        success: data => {
                            beforeCon.innerHTML = '<td colspan="3">' + data.content + '</td>';
                        },
                        error: data => console.log('안됨')
                    });
                }
            });
        }

        if (${b.boardType == '3'}) {
            replyButton.addEventListener('click', function () {
                $.ajax({
                    url: '${contextPath}/adminInsertReply.ad',
                    data: {
                        content: document.getElementById('replyContent').value,
                        nickName: '${loginUser.nickName}',
                        boardNo: '${b.boardNo}',
                        memberNo: '${loginUser.memberNo}'
                    },
                    success: data => {
                        document.getElementById('replyContent').value = '';
                        replyTable.innerHTML = '';
                        let reviewList = '';
                        let check = '';

                        for (let r of data) {
                            if (r.memberNo == ${loginUser.memberNo}) {
                                check = '<a class="fs-6">삭제</a>';
                            } else {
                                check = '';
                            }
                            reviewList =
                                '<tr>' +
                                '<td width="150px"><b>' + r.nickName + '</b></td>' +
                                '<td style="width:60%; font-size:12px; padding-top:15px">' + r.updateDate + '</td>' +
                                '<td width="150px"></td>' +
                                '<td width="150px">' + check + '</td>' +
                                '</tr>' +
                                '<tr style="border-bottom: 1px solid #E3E3E3;">' +
                                '<td colspan="3">' + r.content + '</td>' +
                                '</tr>' +
                                '<input type="hidden" name="replyNo" value="' + r.replyNo + '"/>';

                            replyTable.innerHTML += reviewList;
                        }
                        setDeleteEventListeners();
                    },
                    error: data => console.log('실패~')
                });
            });

            setDeleteEventListeners();
        }
    }

    </script>
</body>
</html>