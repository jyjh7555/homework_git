<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
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
    .statusYN.selectState{
    	background: lightgreen;
    	display: inline-block;
    	border: 1px solid black;
    	padding: 5px 10px;
	}
	
	.statusYN.unselectState{
	    background: gray;
	    display: inline-block;
    	border: 1px solid black;
    	padding: 5px 10px;
	}
	.adminYN.selectState{
    	background: lightgreen;
    	display: inline-block;
    	border: 1px solid black;
    	padding: 5px 10px;
	}
	
	.adminYN.unselectState{
	    background: gray;
	    display: inline-block;
    	border: 1px solid black;
    	padding: 5px 10px;
	}
	 .form-container {
            display: flex;
            justify-content: flex-end;
        }
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
			<form id="searchForm">
   				 <select id="searchType">
					<option value="member_No">회원번호</option>
					<option value="member_name">회원이름</option> 
					<option value="nickName">닉네임</option> 
				</select>
				<input type="text" placeholder="검색정보 입력" style="width:35%" id="searchText">
				<button type="button" onclick="searchMember()")>검색</button><br>
			</form>
			</div>
			<div align="center" id=adminContent>
			
				<div class="searchResult hidden" id=searchResult>
		    		<table id="searchList">
		    			<thead>
							<tr>
								<th width="8%">회원번호</th>
								<th width="10%">이름</th>
								<th width="10%">닉네임</th>
								<th width="10%">이메일</th>
								<th width="10%">휴대폰번호</th>
								<th width="12%">주소</th>
								<th width="10%">생년월일</th>
								<th width="12%">가입날짜</th>
							</tr>
						</thead>
						<tbody>
						
						</tbody>
					</table>
					</div>
					
				 <div class="userInfo hidden" id=userInfo>
					<c:forEach items="${ list }" var="m">					
				    		<table id="memberList">
								<tr>
									<th width="6%">회원번호</th>
									<th width="10%">이름</th>
									<th width="10%">닉네임</th>
									<th width="10%">이메일</th>
									<th width="10%">휴대폰번호</th>
									<th width="10%">생년월일</th>
									<th width="12%">주소</th>
									<th width="12%">가입날짜</th>
									<th width="6%">활동</th>
									<th width="6%">관리자</th>
								</tr>
								<tr>
									<td>${ m.memberNo }</td>
									<td>${ m.memberName }</td>
									<td>${ m.nickName }</td>
									<td>${ m.email }</td>
									<td>${ m.phone }</td>
									<td>${ m.age }</td>
									<td>${ m.address }</td>
									<td>${ m.createDate }</td>
									<td>${ m.status }</td>
									<td>${ m.isAdmin }</td>
								</tr>
							</table>
						</c:forEach>
					</div>
					<div class="userUpdate hidden" id="userUpdate">
						<c:forEach items="${ list }" var="m">
							<table id="memberUpdate">
								<tr>
									<th width="6%">회원번호</th>
									<th width="6%">이름</th>
									<th width="10%">닉네임</th>
									<th width="12%">이메일</th>
									<th width="12%">주소</th>
									<th width="10%">휴대폰번호</th>
									<th width="8%">활동</th>
									<th width="8%">관리자</th>
									<th width="8%">정보변경</th>
								</tr>
								<tr>
									<td><input type="text" class="updateNo" value="${ m.memberNo }" readonly></td>
		            				<td><input type="text" class="updateName" value="${ m.memberName }"></td>
						            <td><input type="text" class="updateNickName" value="${ m.nickName }"></td>
						            <td><input type="email" class="updateEmail" value="${ m.email }"></td>
						            <td><input type="text" class="updateAddress" value="${ m.address }"></td>
						            <td><input type="tel" class="updatePhone" value="${ m.phone }"></td>
						            <td>
							            <c:if test="${m.status == 'Y'}">
									            <label>
									                <input type="radio" name="status_${m.memberNo}" value="Y" checked="checked" onclick="toggleStatus('Y','${m.memberNo}')"> Y
									            </label>
									            <label>
									                <input type="radio" name="status_${m.memberNo}" value="N" onclick="toggleStatus('N','${m.memberNo}')"> N
									            </label>
									        </c:if>
									        <c:if test="${m.status == 'N'}">
									            <label>
									                <input type="radio" name="status_${m.memberNo}" value="Y" onclick="toggleStatus('Y','${m.memberNo}')"> Y
									            </label>
									            <label>
									                <input type="radio" name="status_${m.memberNo}" value="N" checked="checked" onclick="toggleStatus('N','${m.memberNo}')"> N
									            </label>
									        </c:if>
									</td>
									<td>
								        <c:if test="${m.isAdmin == 'Y'}">
									            <label>
									                <input type="radio" name="admin_${m.memberNo}" value="Y" checked="checked" onclick="toggleAdmin('Y','${m.memberNo}')"> Y
									            </label>
									            <label>
									                <input type="radio" name="admin_${m.memberNo}" value="N" onclick="toggleAdmin('N','${m.memberNo}')"> N
									            </label>
									        </c:if>
									        <c:if test="${m.isAdmin == 'N'}">
									            <label>
									                <input type="radio" name="admin_${m.memberNo}" value="Y" onclick="toggleAdmin('Y','${m.memberNo}')"> Y
									            </label>
									            <label>
									                <input type="radio" name="admin_${m.memberNo}" value="N" checked="checked" onclick="toggleAdmin('N','${m.memberNo}')"> N
									            </label>
									        </c:if>
									</td>
						            </td>
						            <td><button class="updateUserButton" onclick="updateMember('${m.memberNo}')">변경</button></td>
								</tr>
							</table>
						</c:forEach>
					</div>
				<div class="userDelete hidden" id="userDelete">
					<c:forEach items="${ list }" var="m">
						<table id="memberDelete">
							<tr>
								<th width="10%">회원번호</th>
								<th width="10%">이름</th>
								<th width="10%">닉네임</th>
								<th width="10%">이메일</th>
								<th width="10%">휴대폰번호</th>
								<th width="10%">생년월일</th>
								<th width="12%">가입날짜</th>
								<th width="10%">탈퇴</th>
							</tr>
							<tr>
								<td>${ m.memberNo }</td>
								<td>${ m.memberName }</td>
								<td>${ m.nickName }</td>
								<td>${ m.email }</td>
								<td>${ m.phone }</td>
								<td>${ m.age }</td>
								<td>${ m.createDate }</td>
								<td><button id="deleteUserButton" onclick="deleteMember(${ m.memberNo })">회원탈퇴</button></td>
							</tr>
						</table>
					</c:forEach>
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
				 document.getElementById('searchResult').classList.add('hidden');
				 
			 })
			  document.getElementById('user2').addEventListener('click', function(){
				 document.getElementById('userUpdate').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 document.getElementById('searchResult').classList.add('hidden');
				 
			 })
			 document.getElementById('user3').addEventListener('click', function(){
				 document.getElementById('userDelete').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('regularSupportList').classList.add('hidden');
				 document.getElementById('searchResult').classList.add('hidden');
				 
			 })
			
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
				 document.getElementById('searchResult').classList.add('hidden');
				 
			 })
			 
			 document.getElementById('support2').addEventListener('click', function(){
				 document.getElementById('regularSupportList').classList.toggle('hidden');
				 document.getElementById('userInfo').classList.add('hidden');
				 document.getElementById('userUpdate').classList.add('hidden');
				 document.getElementById('userDelete').classList.add('hidden');
				 document.getElementById('supportList').classList.add('hidden');
				 document.getElementById('searchResult').classList.add('hidden');
				 
			 })
			
			 
		}
		
		function deleteMember(memberNo){			
				$.ajax({
					url: '${contextPath}/adminDelete.me',
					data: {mNo:memberNo},
					success: data =>{
						console.log(data)
					},
					error: data => console.log(data)
					
				})
			
		}
		
		function updateMember(memberNo){
			var memberName = $('.updateNo[value="' + memberNo + '"]').closest('tr').find('.updateName').val()
			var nickName = $('.updateNo[value="' + memberNo + '"]').closest('tr').find('.updateNickName').val()
			var email = $('.updateNo[value="' + memberNo + '"]').closest('tr').find('.updateEmail').val()
			var phone = $('.updateNo[value="' + memberNo + '"]').closest('tr').find('.updatePhone').val()
			var address = $('.updateNo[value="' + memberNo + '"]').closest('tr').find('.updateAddress').val()
			$.ajax({
	        	url: '${contextPath}/adminUpdate.me',
	        	type: 'POST',
	        	data: {
	        		memberNo:memberNo,
	                memberName:memberName,
	                nickName:nickName,
	                email:email,
	                phone:phone,
	                address:address
		            },
	        		success: data =>{
	        			console.log(data)
	        			if (data === "success") {
	                        alert("회원 정보가 성공적으로 업데이트되었습니다.");
	                    } else {
	                        alert("회원 정보 업데이트에 실패했습니다.");
	                    }
	        		},
	        		error: data => console.log(data)
	        })
	        
		}
		
		function toggleStatus(status, memberNo) {
			console.log(status)
			console.log(memberNo)
			$.ajax({
				url:'${contextPath}/updateStatus.me',
				data: {status:status, memberNo:memberNo},
				success: data => {
					if (status == 'Y') {
		                alert('회원번호 ' + memberNo + '님의 활동 권한을 부여합니다.');
		            } else {
		                alert('회원번호 ' + memberNo + '님의 활동 권한을 해제합니다.');
		            }		
				},
				error: data => console.log(data)
			})
            
		}
		
		function toggleAdmin(isAdmin, memberNo) {
			$.ajax({
				url:'${contextPath}/updateAdmin.me',
				data: {isAdmin:isAdmin, memberNo:memberNo},
				success: data => {
					if (isAdmin == 'Y') {
		                alert('회원번호 ' + memberNo + '님의 관리자 권한을 부여합니다.');
		            } else {
		                alert('회원번호 ' + memberNo + '님의 관리자 권한을 해제합니다.');
		            }		
				},
				error: data => console.log(data)
			})
		}
		function selectMembers(){
			 document.getElementById('userInfo').classList.add('hidden');
			 document.getElementById('userUpdate').classList.add('hidden');
			 document.getElementById('userDelete').classList.add('hidden');
			 document.getElementById('supportList').classList.add('hidden');
			 document.getElementById('regularSupportList').classList.add('hidden');
		}
		
		function searchMember() {
	        var searchType = document.getElementById('searchType').value;
	        var searchText = document.getElementById('searchText').value;
	        $.ajax({
				url: '${contextPath}/searchMember.me',
				data: {
					   type:searchType,
					   text:searchText	
						},
				success: data =>{
					selectMembers()
					document.getElementById('searchResult').classList.remove('hidden');
					
					const tbody = document.querySelector('tbody');
					tbody.innerHTML = '';
					
					for(const s of data){
						const tr = document.createElement('tr');
						
						const noTd = document.createElement('td');
						noTd.innerText = s.memberNo;
						const nameTd = document.createElement('td');
						nameTd.innerText = s.memberName;
						const nickTd = document.createElement('td');
						nickTd.innerText = s.nickName;
						const emailTd = document.createElement('td');
						emailTd.innerText = s.email;
						const phoneTd = document.createElement('td');
						phoneTd.innerText = s.phone;
						const addressTd = document.createElement('td');
						addressTd.innerText = s.address;
						const ageTd = document.createElement('td');
						ageTd.innerText = s.age;
						const createDateTd = document.createElement('td');
						createDateTd.innerText = s.createDate;
						
						tr.append(noTd);
						tr.append(nameTd);
						tr.append(nickTd);
						tr.append(emailTd);
						tr.append(phoneTd);
						tr.append(addressTd);
						tr.append(ageTd);
						tr.append(createDateTd);
						
						tbody.append(tr);
					}
				},
				error: data => console.log(data)
				
			})
		}
		
	</script>
</body>
</html>
