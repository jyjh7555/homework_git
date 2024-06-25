<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>게시판 목록</title>
    <style>
        
        .container {
            width: 1232px;
            max-width: 100%;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 8px; }
        th { background-color: #f2f2f2; }
        a { text-decoration: none; color: black; }
        button { margin-top: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>게시판</h1>
        <form method="get" action="list.jsp">
            <select name="searchField">
                <option value="title">제목</option>
                <option value="content">내용</option>            
                <option value="name">작성자</option>
            </select>
            <input type="text" name="searchText" placeholder="내용을 입력해주세요">
            <input type="submit" value="검색">
        </form>
        <br><br>
        <table>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
            <tr>
                <td>공지</td>
                <td><a href="view.jsp?postId=1">연습1</a></td>
                <td>강건강</td>
                <td>2024.06.10</td>
                <td>2</td>
            </tr>
            <tr>
                <td> 01 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 02 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 03 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 04 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 05 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 06 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 07 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 08 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> 09 </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <button onclick="window.location.href='write.jsp';">글쓰기</button>
        <div style="margin-top: 20px;">
            <button>1</button>
        </div>
    </div>
</body>
</html>
