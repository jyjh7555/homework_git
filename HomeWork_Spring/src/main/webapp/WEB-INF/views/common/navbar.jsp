<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	   #navbar{
	    color: white; 
     	display: flex;
    	flex-direction:row;
      	justify-content:end;
      	margin-left:500px;
      	white-space: nowrap;
      

	   }
	   #navbar a {
	      color: white; /* White text color */
	      text-decoration: none;
	      margin: 0 50px;
	      font-weight: bold;
	      transition: color 0.5s ease;
	      font-size: 18px;
	   
	   }
	   #navbar>a:hover{font-weight: bold; text-decoration: underline;}
	   
	   #navbar-section a{
	   	color:white;
	   }
	   
	   .logo {
	       display: flex;
	       align-items: center;
	       width: 300px;
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
	    #login-info {
        display: flex;
        align-items: center;
	    }
	
	    #login-info span {
	        font-size: 24px;
	        font-weight: bold;
	        margin-right: 10px;
	    }
	    #navbar a {
        color: white;
        text-decoration: none;
        margin: 0 50px;
        font-weight: bold;
        transition: color 0.5s ease;
        font-size: 18px;
    }
	   
	   #navbar-section {
	         background-color: transparent; /* transparent background */
	         display: flex;
	         align-items: center;
	         justify-content: space-around;
	         padding: 10px 20px;
	         border-bottom: 0.5px solid lightgray;
	         height:80px;
	         transition: background-color 0.5s ease;
	   }

</style>
</head>
<body>
	 <div id="navbar-section">
            <div class="logo">
                <div class="logo-container">
                    <a href="${ contextPath }"><img style="filter:invert(1); color:white; width:130px; height:130px;"id="logo-image" src="resources/image/newLogo.png" alt="로고"></a>
                </div>
                <a href="${contextPath}/surpport.su"><b>후원하기</b></a>
            </div>
		<c:if test="${ empty loginUser }">
            <div id="navbar">
                <a href="${contextPath}/loginView.me">Login</a>
                <a href="${contextPath}/signUp.me">회원가입</a>
                <a href="${contextPath}/myPage.me">마이 페이지</a>
            </div>
		</c:if>
		<c:if test="${ !empty loginUser }">
        	<div id="navbar">
        		<div id="login-info">
		              <a><span style="font-size: 24px;">${loginUser.nickName}님</span>, 반갑습니다.</a>
		              <c:if test='${ loginUser.isAdmin ==  "Y"}'>
			              <a href="${contextPath}/admin.me">관리자 페이지</a>
		              </c:if>
		              <a href="${contextPath}/myPage.me">마이 페이지</a>
		              <a href="${contextPath}/logout.me">로그아웃</a>
	              </div>
	       	</div> 
		</c:if>
     </div>
	
	
	
	<script>
	
	function changeBackground() {
	        const navbarSection = document.getElementById('navbar-section');
	        navbarSection.style.backgroundColor = "white";
	        const links = navbarSection.querySelectorAll('a');
	        links.forEach(function(link) {
	            link.style.color = "black";
	        })
	         const logoImage = document.getElementById('logo-image');
	         if (logoImage) {
	            logoImage.style.filter = "invert(0)";
	      };;
	    }

	    function resetBackground() {
	        const navbarSection = document.getElementById('navbar-section');
	        navbarSection.style.backgroundColor = "transparent";
	        const links = navbarSection.querySelectorAll('a');
	        links.forEach(function(link) {
	            link.style.color = "white";
	        })
	        const logoImage = document.getElementById('logo-image');
	         if (logoImage) {
	            logoImage.style.filter = "invert(1)";
	      };
	    }
    
    
    
	
	</script>
	
	
	
	
	
	
</body>
</html>