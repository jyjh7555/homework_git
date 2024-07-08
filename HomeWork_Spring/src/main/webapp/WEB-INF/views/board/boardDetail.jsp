<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<Style>
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

</Style>
</head>
<body>

	<div id=topAndNavbar >
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



	<div class="d-flex justify-content-center align-items-center vh-30 row-gap-3" >
		<div class="d-flex flex-column justify-content-center mb-3 border border-3 w-50 mt-3 ">
			<div class="col-12">
				<label for="boardTitle" class="form-label">TITLE</label>
				<br>${b.boardTitle }
			</div>
	
			<div class="col-12">
				<div class="input-group">
		          <span class="input-group-text">CONTENT</span>
		          <textarea class="form-control" rows="auto" name="boardContent"  readonly>${b.boardContent }\n\n
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          체크
		          
		          </textarea>
		        </div>
			</div>
			
			<br><br><br><br><br>
			
				<button class="w-100 btn btn-success btn-lg" type="button" id="updateForm">UPDATE</button>
				<button class="w-100 btn btn-secondary btn-lg" type="button" id="deleteModal">DELETE</button>
			<button class="w-100 btn btn-dark btn-lg" type="button" onclick="javascript:history.back();">BACK</button>
			<button class="w-100 btn btn-dark btn-lg" type="button" onclick="location.href='${contextPath}/list.bo?page=' + ${ page }">GO TO LIST</button>
		</div>
	</div>
	
	
	




	<div id="footer">
 			<jsp:include page="../common/footer.jsp"/>
 	</div>
 	<div id="fixedBtn">
 		<jsp:include page="../common/fixedBtn.jsp"/>
 	</div>


</body>
</html>