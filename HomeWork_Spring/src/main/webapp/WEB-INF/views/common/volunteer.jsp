<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
	.volunteerWrap {
		/* border-bottom: 0.5px solid lightgray; */
		padding: 10px 0;
		width:auto;	
		height:100px;
		
	}
	.volunteerWrap>ul {
		display:flex;
		align-items: center;
		justify-content: space-evenly;
		list-style-type: none;
		padding: -5px;
		margin-left:-150px;
		margin-top: 20px;
		
	}
	
	.volunteerWrap>ul button {
		border-bottom-right-radius: 32px;
		border-top-left-radius: 32px;
		height: 50px;
		width:210%;
		position: relative;
	}
	
	 .volunteerWrap>ul>li:hover{
		z-index:1;
	} 
	
	
   .hidden {
        visibility: hidden;
        opacity: 0;
        transition: visibility 0s linear, opacity 0.0s linear;
        z-index:0;
    }

    .visible {
        visibility: visible;
        opacity: 1;
        transition: visibility 0s linear, opacity 0.0s linear;
        z-index:0;
    }
	
	
	/* .volunteerWrap > ul > li {
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
    border-right: 5px solid lightgray;
    height: 80px; 선의 높이 조절
	} */
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
	<Br><Br>
		<ul id="volunteer">
			<li class="domestic" >
				<!-- <a href="domestic01.in" style="border:5px solid black; width:250px;">국내자원봉사</a> -->
				<button id="domestic"class="btn btn-lg volunteerB" aria-expanded="false" data-bs-toggle="dropdown" style="color:#373A40;background: #EEEEEE; border:3px solid rgba(0, 0, 0, 0.1);" ><b>국내봉사</b></button>
				<ul class="dropdown-menu" aria-labelledby="domestic"style="width:13%; background: #EEEEEE;">
			      <li><a class="dropdown-item" href="domestic01.in">집짓기</a></li>
			      <li><a class="dropdown-item" href="domestic02.in">환경개선</a></li>
			      <li><a class="dropdown-item" href="domestic03.in">긴급/재난</a></li>
		    	</ul>	
			</li>
			<li style="margin-right:-33%; margin-left:-33%;" class="global">
				<!-- <a href="global01.in">해외자원봉사</a> -->
				<button id="global"class="btn btn-lg volunteerB" aria-expanded="false"data-bs-toggle="dropdown" class="btn btn-lg volunteerB" style="color:#000000;background: rgb(249,197,67); border:3px solid rgba(0, 0, 0, 0.2);"><b>해외봉사</b></button>
				<ul class="dropdown-menu" aria-labelledby="global" style="width:13%; background: rgb(249,197,67);">
			      <li><a class="dropdown-item" style="color:gray;" href="global01.in">다른거</a></li>
			      <li><a class="dropdown-item" style="color:gray;" href="global02.in">뭐지</a></li>
			      <li><a class="dropdown-item" style="color:gray;" href="global03.in">재난</a></li>
		    	</ul>
			</li>
			<li class="board">
				<!-- <a href="global01.in">해외자원봉사</a> -->
				<button id="board"class="btn btn-lg volunteerB" aria-expanded="false"data-bs-toggle="dropdown" class="btn btn-lg volunteerB" style="color:#EEE;background:rgb(45,45,52); border:3px solid rgba(0, 0, 0, 0.3);" ><b>봉사신청</b></b></button>
				<ul class="dropdown-menu" aria-labelledby="board" style="width:13%; background: rgb(45,45,52); color:white;">
			      <li><a class="dropdown-item" style="color:white;" href="{contextPath}/volunteer.bo">국내게시판</a></li>
			      <li><a class="dropdown-item" style="color:white;" href="#">해외게시판</a></li>
			      <li><a class="dropdown-item" style="color:white;" href="#">후기게시판</a></li>
		    	</ul>
			</li>
		</ul>
		
		
	</div>
	
	
	<br><br><br><br><br>
	<script>
		window.onload =()=>{
			/* 
			const uls = document.getElementById('volunteer');
			const btns = document.getElementsByClassName('volunteerB');
			console.log(uls);
				
				for(const btn of btns){
					btn.addEventListener('mouseover', function() {
						
		                this.nextElementSibling.classList.remove('hidden');
		                this.nextElementSibling.classList.add('visible');
			        });
					
				}	
				
				
			uls.addEventListener('mouseout',function(){
				for(const btn of btns){
					btn.nextElementSibling.classList.remove('visible');
					btn.nextElementSibling.classList.add('hidden');
				}
			})
			 */
			
			/* const btns= document.getElementById('domestic')
			 */
			
			/* for(const btn of btns){
				btn.addEventListener('mouseover', function() {
					console.log(this);
	                this.nextElementSibling.classList.remove('hidden');
	                this.nextElementSibling.classList.add('visible');
		        });
				
				btn.addEventListener('mouseout', function() {
	                this.nextElementSibling.classList.remove('visible');
	                this.nextElementSibling.classList.add('hidden');
		        });
				
			} */
			/* 
			const lis = document.getElementById('volunteer').querySelectorAll('li');
			for(const li of lis){
				li.addEventListener('mouseover', function(){
					console.log(this);
				})
			} */
			
			
		}
	
	
	</script>
</body>
</html>