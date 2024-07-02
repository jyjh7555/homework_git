<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	#adminMenu{display:inline-block; border-right:1px groove gray; height: 700px; width:15%; }
	.mainCate{background: skyblue; border-radius:5px; font-weight:bold; font-size: 17px; height:36px; border-top:1px solid white;border-bottom:1px solid white; cursor: pointer;}
	.mainCate:hover{text-decoration: underline;}
	.hidden{display:none;}
	.cate{background:white; font-weight:none; font-size:14px; text-align:left ; list-style-type:none; }
	#selectDiv{display:inline-block;  width:75%; padding:1px;margin-left: 10px;}
	#adminContent{height:94%; width:99%; border:1px solid black; margin-top:8px;}
	
	
	
	.userInfo, .userUpdate, .userDelete, .supportPage, .regularSupportPage {
            
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1); /* 그리드 컨테이너 그림자 */
            margin-top: 20px;
            width:90%;
        }

    .userInfo div {
            margin-bottom: 10px;
        }
	
	table{
		text-align: center;
	}
	th {
        border-bottom: 1px solid black;
    }
    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="tel"] {
        width: 100%;
        box-sizing: border-box;
    }
    .adminStatus{
    	display: inline-block;
    	border: 1px solid black;
    	padding: 5px 10px;
    }
    .selectState{background: lightgray;}
	.unselectState{background: none;}
</style>


</head>
<body>
	<div class="logo">
       <div class="logo-container">
           <a href="${ contextPath }"><img id="logo-image" src="resources/image/newLogo.png" alt="로고"></a>
        </div>
    </div>
	<h1 align="center"> 관리자페이지 </h1>
	
	<div id="container">
		<div align="center" id=adminMenu>
			<div style="border:1px solid skyblue; background:skyblue; height:32px"></div>
			
			<div class="mainCate" style="margin-top:10px" >회원정보관리</div>
				<ul class="hidden" style="list-style-type:none; text-align:left;">
					<li id="user1">회원 정보 조회</li>
					<li id="user2">회원 정보 수정</li>
					<li id="user3">회원 탈퇴</li>
				</ul>
			
			<div class=mainCate>후원정보관리</div>
				<ul class="hidden" style="list-style-type:none; text-align:left;">
					<li id="support1">후원 목록</li>
					<li id="support2">정기후원목록</li>
					
				</ul>
			<div class=mainCate>게시판관리</div>
				<ul class="hidden" style="list-style-type:none; text-align:left;">
					<li>국내게시판</li>
					<li>해외게시판</li>
					
				</ul>
			
		</div>
				
		<div id=selectDiv>
			<div style="border:2px solid #CCCCCC; height:30px">
			검색정보 입력 : <input type="text" placeholder="검색정보 입력" style="width:55%"><br>
			</div>
			<div align="center" id=adminContent>
				
				
				 <div class="userInfo hidden" id=userInfo>
			    	<table id="memberList">
						<tr>
							<th width="8%">회원번호</th>
							<th width="10%">이름</th>
							<th width="10%">닉네임</th>
							<th width="10%">이메일</th>
							<th width="10%">휴대폰번호</th>
							<th width="10%">생년월일</th>
							<th width="12%">가입날짜</th>
							<th width="10%">관리자</th>
						</tr>
						<c:forEach items="${ list }" var="m">
							<tr>
								<td>${ m.memberNo }</td>
								<td>${ m.memberId }</td>
								<td>${ m.nickName }</td>
								<td>${ m.email }</td>
								<td>${ m.phone }</td>
								<td>${ m.age }</td>
								<td>${ m.createDate }</td>
								<td>${ m.isAdmin }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="userUpdate hidden" id="userUpdate">
					<table id="memberUpdate">
						<tr>
							<th width="6%">회원번호</th>
							<th width="10%">이름</th>
							<th width="10%">닉네임</th>
							<th width="10%">비밀번호</th>
							<th width="10%">이메일</th>
							<th width="10%">휴대폰번호</th>
							<th width="10%">관리자여부</th>
							<th width="12%">정보변경</th>
						</tr>
						<tr>
							<td><input type="text" value="001" readonly></td>
            				<td><input type="text" value="강건강"></td>
				            <td><input type="text" value="스트롱건강"></td>
				            <td><input type="password" value="password"></td>
				            <td><input type="email" value="gang@naver.com"></td>
				            <td><input type="tel" value="010-1234-5678"></td>
				            <td>
				            <div class="adminStatus">Y</div>
				            <div class="adminStatus selectState">N</div>
				            </td>
				            <td><button id="updateUserButton">정보 수정</button></td>
						</tr>
					</table>
				</div>
				<div class="userDelete hidden" id="userDelete">
					<table id="memberUpdate">
						<tr>
							<th width="10%">회원번호</th>
							<th width="10%">이름</th>
							<th width="10%">닉네임</th>
							<th width="10%">비밀번호</th>
							<th width="10%">이메일</th>
							<th width="10%">휴대폰번호</th>
							<th width="10%">생년월일</th>
							<th width="10%">주민등록번호</th>
							<th width="12%">가입날짜</th>
							<th width="10%">탈퇴</th>
						</tr>
						<tr>
							<td>001</td>
							<td>강건강</td>
							<td>스트롱건강</td>
							<td>password</td>
							<td>gang@naver.com</td>
							<td>010-1234-5678</td>
							<td>94-01-01</td>
							<td>940101</td>
							<td>24-06-11</td>
							<td><button id="deleteUserButton">회원탈퇴</button></td>
						</tr>
					</table>
				</div>
			<div class="supportPage hidden" id="supportList">
					<table id="supportTable">
						<tr>
							<th width="10%">회원번호</th>
							<th width="10%">이름</th>
							<th width="10%">이메일</th>
							<th width="10%">휴대폰번호</th>
							<th width="10%">후원날짜</th>
							<th width="10%">후원금액(원)</th>
						</tr>
						<tr>
							<td>001</td>
							<td>강건강</td>
							<td>gang@naver.com</td>
							<td>010-1234-5678</td>
							<td>24-06-11</td>
							<td>10000원</td>
						</tr>
					</table>
				</div>
			<div class="regularSupportPage hidden" id="regularSupportList">
					<table id="regulartSupportTable">
						<tr>
							<th width="10%">회원번호</th>
							<th width="10%">이름</th>
							<th width="10%">이메일</th>
							<th width="15%">휴대폰번호</th>
							<th width="18%">후원시작날짜</th>
							<th width="10%">정기후원일</th>
							<th width="10%">후원금액(원)</th>
							<th width="5">취소</th>
						</tr>
						<tr>
							<td>001</td>
							<td>강건강</td>
							<td>gang@naver.com</td>
							<td>010-1234-5678</td>
							<td>24-06-11</td>
							<td>11일</td>
							<td>10000원</td>
							<td><button id="supportCancle">정기결제취소</button></td>
						</tr>
					</table>
				</div>
				
			</div>
		</div>
	</div>
	
	<script>
		window.onload =() =>{
			const mainCate = document.getElementsByClassName('mainCate');
			console.log(mainCate);
			 mainCate[0].addEventListener('click', function() {
	                this.nextElementSibling.classList.toggle('hidden');
	                
	            });
			 mainCate[1].addEventListener('click', function() {
	                this.nextElementSibling.classList.toggle('hidden');
	                
	            });
			 mainCate[2].addEventListener('click', function() {
	                this.nextElementSibling.classList.toggle('hidden');
	                
	            });
			
			 
			 
			 document.getElementById('user1').addEventListener('click', function(){
				 document.getElementById('userInfo').classList.toggle('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 
			 })
			  document.getElementById('user2').addEventListener('click', function(){
				 document.getElementById('userUpdate').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 
			 })
			 document.getElementById('user3').addEventListener('click', function(){
				 document.getElementById('userDelete').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 
			 })
			 document.getElementById('updateUserButton').addEventListener('click', function() {
		            if (confirm("정보를 수정하시겠습니까?")) {
		                alert("수정되었습니다.");
		            }
		        });
			 document.getElementById('deleteUserButton').addEventListener('click', function() {
		            if (confirm("정말 탈퇴하시겠습니까?")) {
		                alert("탈퇴되었습니다.");
		            }
		        });
			 document.getElementById('support1').addEventListener('click', function(){
				 document.getElementById('supportList').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 
			 })
			 
			 document.getElementById('support2').addEventListener('click', function(){
				 document.getElementById('regularSupportList').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 
			 })
			 document.getElementById('supportCancle').addEventListener('click', function() {
		            if (confirm("정기후원을 취소합니까?")) {
		                alert("후원이 취소되었습니다.\n후원해주셔서 감사합니다.");
		            }
		        });
			 
		}
	
	</script>
		
</body>
</html>