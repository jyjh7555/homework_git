<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</style>
<title>게시판</title>
</head>
<body>
    <div class="d-flex justify-content-center align-items-center vh-30 row-gap-3">
        <div class="d-flex flex-column justify-content-center mb-3 border border-4 w-50 mt-3" style="width:1400px;">
            <table id="domesticBoardTable" class="table table-hover">
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
		            			<td>20</td>
		            			<td>${b.updateDate }</td>
		            			<td>${b.boardCount }</td>
		          			</tr>
	         			</c:forEach>
                </tbody>
            </table>
            <c:if test="${!empty loginUser}">
                <button class="btn btn-sm btn-outline-success" style="width:100px; border-radius:16px;font-size:12px;" type="button" onclick="location.href='${contextPath}/writeBoard.bo'">글 작성</button>
            </c:if>
        </div>
    </div>
    
    <script>
        window.onload = () => {
            const tbody = document.querySelector('tbody');

            tbody.addEventListener('click', function(event) {
                const target = event.target;
                if (target.tagName.toLowerCase() === 'td') {
                    const tr = target.parentElement;
                    const boardId = tr.querySelector('td').innerText;
                    location.href = "${contextPath}/selectBoard.bo?bId=" + boardId + "&page=" + ${pi.currentPage}
                }
            });
        }

    </script>
</body>
</html>
