<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
	
	body {
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
	}
	#topAndNavbar {
		background-image:linear-gradient(
	        rgba(0, 0, 0, 0.5),
	        rgba(0, 0, 0, 0.5)
	      )
	      ,url('resources/image/topImage.png');
	    background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    transition: background-color 0.5s ease;
	}
	
	#content {
		margin-top:70px;
		display:flex;
		flex-direction:row;
		justify-content:center;
	}
	
	.introduce1 {
		text-align:center;
		line-height:2;
		
        
	}
	
	.introduce1 em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
	
	.introduce1 h3 {
		font-size: 40px;
		margin-top:10px;
	}
	
	.introduce1 p {
		font-size: 20px;
		margin-top:10px;
	}
	
	.introduce2 {
		background-image: url('resources/image/introduce.png');
		color:white; 
		height:300px;
		background-size: cover; 
	    background-position: center;
	    background-repeat: no-repeat;
	    text-align:center;
	    margin-top:30px;
	    
	    
	}
	
	.info {
		list-style-type: none;
		display:flex;
	    flex-direction:row;
	    justify-content:space-around;
	    margin-top:40px;
	}
	
	.info>li {
		margin-top:70px;
	}
	
	.info>li>em {
		font-size:30px;
		font-weight:700;
	}
	
	.info>li>p>strong {
		font-size: 60px;
		font-weight: bold;
	}
	
	#introduce3{
		display:flex;
		justify-content:center;
		align-items: center;
		margin-top:40px;
		flex-direction:column;
	}
	
	#introduce3>h3 {
		font-size: 40px;
		margin-top:30px;
	}
	
	#introduce3>em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
	
	#introduce4 {
		display:flex;
		justify-content:center;
		align-items: center;
		margin-top:40px;
		flex-direction:column;
	}
	
	#introduce4>h3 {
		font-size: 40px;
		margin-top:30px;
	}
	
	#introduce4>em{
		font-size:30px;
		color:skyblue;
		font-weight:bold;
	}
	
	.img-container {
		display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        margin-top: 20px;
	}
	
	.images {
		flex: 1 1 calc(50% - 40px);
        margin: 10px;
        padding: 10px;
        box-sizing: border-box;
	}
	
	.images img {
        width: 100%;
        height: 500px;
        object-fit: cover;  
	}
	
	#introduce5 {
		 display: flex;
	     align-items:center;
	     margin-top: 40px;
	     flex-direction:column;
	}
	#introduce5-1 {
		 list-style-type: none;
		 border-bottom: 0.5px solid lightgray;
		 text-align: center;
		 padding:50px;
		 
	}
	
	#introduce5-2 {
		 list-style-type: none;
		 text-align: center;
		 padding:50px;
		 
	}
	
	#introduce5 em {
		font-size:35px;
		color:skyblue;
		font-weight: bold;
	}
	
	#introduce5 p {		
		font-size:23px;
		color:black;
		width: 100%;
		font-family: "Nanum Gothic", sans-serif;
  		font-weight: 400;
  		font-style: normal;
  		line-height:2;
	}
	
    
    
  
	
</style>
</head>
<body>
 	<div id="container">
 		<div id=topAndNavbar>
	 		<div id="navbar-section2" onmouseover="changeBackground()" onmouseout="resetBackground()">
		        <jsp:include page="WEB-INF/views/common/navbar.jsp" />
		    </div>    
		    <div id="top-section">
		        <jsp:include page="WEB-INF/views/common/top.jsp" />
		    </div>
 		<div id="voulnteer2">
 			<jsp:include page="WEB-INF/views/common/volunteer.jsp"/>
 		</div>
 		</div>
	    <div id="content">
        	<div class="introduce1">
        		<em>A world where everyone has a decent place to live</em>
        		<h3>모든 사람에게 안락한 집이 있는 세상</h3>
        		<p>
        			홈워크(Home Work)는 ‘모든 사람에게 안락한 집이 있는 세상’이라는 비전을 가지고 
        			<br>       			
        			1976년 미국에서 시작한 국제 주거복지 비영리단체로 열악한 주거환경으로 고통 받는 사람들을 위해 집과 마을을 짓고 희망을 전하고 있습니다.
        			<br> 
        			‘집’은 가난의 고리를 끊을 수 있는 근본적인 해결책이자 한 가족을 위한 따뜻한 보금자리입니다.      		
        		</p>
        	</div>	
	    </div> 
	    	<div class="introduce2">
        		<ul class="info">
        			<li>
        			<em>불안정 주거환경</em>
        			<p>
        				<strong>1,500,000,000</strong>
        				가구
        			</li>
        			<li>
        			<em>매년 추가적인 주택 필요</em>
        			<p>
        				<strong>100,000,000</strong>
        				가구
        			</li>
        			<li>
        			<em>2050년까지 주택 수요 증가</em>
        			<p>
        				<strong>68%</strong>       				
        			</li>
        			<li>
        			<em>부족한 자원봉사자 수</em>
        			<p>
        				<strong>20,000,000</strong>
        				명
        			</li>
        		</ul>
        	</div>
        	<div id="introduce3">
        		<em>HomeWork goes anywhere in the world in need</em>
        		<h3>HomeWork는 도움이 필요한 전세계 어디든 갑니다</h3>
        		<div id="img-container">
        		<img src="resources/image/map.png" alt="지도">
        		</div>
        	</div>
        	<div id="introduce4">
			    <em>Even at this moment</em>
			    <h3>4분마다 1채씩 HOMEWORK의 안락한 주택이 지어지고 있습니다.</h3>
			    <div class="img-container">
			        <div class="images">
			            <img src="resources/image/introduce4-1.jpg" alt="Image 1">
			        </div>
			        <div class="images">
			            <img src="resources/image/introduce4-2.jpg" alt="Image 2">
			        </div>
			        <div class="images">
			            <img src="resources/image/introduce4-3.jpg" alt="Image 3">
			        </div>
			        <div class="images">
			            <img src="resources/image/introduce4-4.jpg" alt="Image 4">
			        </div>
    			</div>
			</div>
			<ul id="introduce5">
				<li id="introduce5-1">
					<em>함께 만드는 희망의 집</em>
					<div class="txt">
						<p>우리와 함께 집과 희망을 필요로 하는 가정에 제공하세요. 건축 봉사 프로그램을 통해 안전하고 저<br>
						   렴한 주택을 제공하며, 여러분의 손길로 더 나은 미래를 위한 안정적인 기초를 만듭니다. 집을 하나<br>
						   씩 지어가며 삶과 지역 사회를 변화시키는 기쁨을 경험해보세요. 함께하면 모든 사람이 안락한 집에<br>
						   서 살 수 있는 세상을 만들 수 있습니다. 오늘 자원봉사에 참여하여 주거와 안전을 제공하는 글로벌 운동에 동참하세요. <br><br>
						   
						   여러분의 참여는 단순히 집을 짓는 것을 넘어, 희망과 안전을 제공합니다. 우리의 건축 봉사 프로그램은 전 세계적으로 <br>
						   도움이 필요한 가정들에게 큰 변화를 일으키고 있습니다. 한 채의 집은 한 가족에게 안정적인 생활의 기초를 제공하며, 이로 인해<br>
						   그들의 미래가 밝아집니다. 주택 건설을 통해 자립할 수 있는 기회를 제공하고, 지역 사회의 발전을 촉진합니다. 오늘 여러분의 소중한 시간을<br>
						   투자하여, 세상을 더 나은 곳으로 만드는 데 동참해보세요. 우리의 작은 노력이 모여 큰 변화를 만듭니다. 지금 바로 자원봉사에 참여하세요!
					   </p>
					</div>
					
				</li>
				<li id="introduce5-2">
					<em>모두가 새로워지는 변화의 파트너십</em>
					<div class="txt">
						<p>
							해비타트 운동에 참여하는 개인이나 조직은 모두 파트너입니다.
							<br>
							협력을 통해 집을 갖게 되는 가정은 ‘홈오너’, 건축에 필요한 자금, 자재나 기술 등을 기부하는 개인과 기업, 단체나<br>
							교회 등은 ‘후원파트너’, 그리고 건축이나 행사 현장 및 해비타트 사무실에서 작업에 참여하는 분들은 ‘자원봉사파트너’입니다.<br>
							홈오너는 자신의 집이 완성될 때까지 현장에서 일정 시간 이상 자원봉사자들과 더불어 건축작업에 참여하는 ‘땀의 분담’을 실천하고,<br>
							입주 후에는 주택원가를 장기간 무이자로 상환하는데 그 소중한 상환금은 또 다른 가정의 집을 지을 수 있도록 사용됩니다.
							<br><br>
							이렇게 사랑의 나눔과 협력의 순환이 계속되는 동안 참여하는 모든 파트너들의 삶이 가치 있게 변하고 풍성해집니다.
						</p>
					</div>
					
				</li>
	
			</ul>
        <div id="footer">
 			<jsp:include page="WEB-INF/views/common/footer.jsp"/>
 		</div>	
 		<div id="fixedBtn">
 			<jsp:include page="WEB-INF/views/common/fixedBtn.jsp"/>
 		</div>
 		
 		
 		
 		
        	
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

	/*function changeBackground() {
        document.getElementById('navbar-section').style.backgroundColor = "white";
       
    }

    function resetBackground() {
        document.getElementById('navbar-section').style.backgroundColor = "transparent";
    }*/
    </script>

</body>
</html>