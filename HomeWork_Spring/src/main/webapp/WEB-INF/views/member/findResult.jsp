<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
	}
	
	em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
    
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
	
	.inline-btn {
		display:inline-block;
		}
	
	/* .custom-form-control:focus {
            border: 10px solid; 
            } */
            
    .button{
    	background-color: #b0d342;
    	align: center;
    }
    


</style>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<body>


	<div id=topAndNavbar>
 		<div id="navbar-section2" onmouseover="changeBackground()" onmouseout="resetBackground()">
	        <jsp:include page="../common/navbar.jsp" />
	    </div>    
	    <div id="top-section">
	        <jsp:include page="../common/top.jsp" />
	    </div>
 	</div>
	<div id="voulnteer2">
		<jsp:include page="../common/volunteer.jsp"/>
	</div>	



	
	<div align="center" >
		<div class="row d-flex flex-column justify-content-center mb-3 border border-5 w-50 mt-3 " align="center">
			<c:if test="${ type eq 1 }">
				<c:if test="${!empty findId}">
					<label style="margin:25px; font-size:25px;"> ${ findName }님의 찾으시는 아이디는 : ${ findId }</label>
				</c:if>
				<c:if test = "${empty findId}">
					<label style="margin:25px; font-size:25px;"> ${ findName }님의 찾으시는 아이디가 없습니다.</label>
				</c:if>
			</c:if>
			<c:if test="${type eq 2}">
		    	<c:if test="${ !empty tempPwd}">
			        <c:if test="${tempPwd != null}">
			            <label style="margin:25px; font-size:25px;">${findName}님의 임시비밀번호입니다. : ${tempPwd}</label>
			            <label style="margin:25px; font-size:25px;">임시 비밀번호로 로그인해주세요.</label>
			        </c:if>
			       <c:if test="${empty tempPwd}">
			            <label style="margin:25px; font-size:25px;">${findName}님의 계정이 없습니다.</label>
			        </c:if>
			    </c:if>
			</c:if>

				<div style="text-align: center;">
					<button class="btn btn-primary btn-md mb-3" onclick="home()"> 로그인화면으로 돌아가기</button>
				</div>
		</div>	        
	</div>
	
	
	
	<div id="footer">
		<jsp:include page="../common/footer.jsp"/>
	</div>	
	
	<script>
	 	function home(){
	 		location.href="loginView.me";
	 	}


	
	
	</script>
	
</body>
</html>
