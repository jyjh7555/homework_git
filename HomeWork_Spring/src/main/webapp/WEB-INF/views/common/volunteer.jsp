<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.volunteerWrap {
		border-bottom: 0.5px solid lightgray;
		padding: 10px 0;
	}
	.volunteerWrap>ul {
		display:flex;
		align-items: center;
		justify-content: space-evenly;
		list-style-type: none;
		padding: 0;
	}
	.volunteerWrap > ul > li {
    position: relative;
    padding: 0 20px; 
	}
	
	.volunteerWrap > ul > li:not(:last-child)::after {
    content: "";
    position: absolute;
    right: 0;
    top: 50%;
 	margin-right:-280px;
    transform: translateY(-50%);
    border-right: 0.5px solid lightgray;
    height: 80px; /* 선의 높이 조절 */
	}
	a {
		color: black;
		text-decoration: none;
		font-size:20px;
		
	}
	a:hover{
		font-weight: bold;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<div class=volunteerWrap>
		<ul id="volunteer">
			<li class="domestic">
				<a href="domestic01.in">국내자원봉사(디자인수정)</a>
			</li>
			<li class="golobal">
				<a href="volunteer/global">해외자원봉사(디자인수정)</a>
			</li>
			
		</ul>
	</div>
</body>
</html>