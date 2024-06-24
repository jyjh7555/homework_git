<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a{display:block; color:#555555; font-size: 17px; align:center; text-decoration: none;}
	
	ul{ list-style: none;}
	
	.head{display: inline-block;  margin-right: 5px; border:1px solid black;
		width:120px; line-height:40px; margin-left:-10px; text-align:center;}
	
	.body{display: inline-block;  margin-right: 2px; border:1px solid black;
		width:200px; line-height:50px; margin-left:-10px;  text-align:center;
		background:#f3f3f3;}
</style>
</head>
<body >
	
	<div align="center" style="border-bottom:1px solid #888888">
	<ul>
		<li class="head"><a href="javascript:alert('작동확인국내')">국내봉사</a></li>
	
		<li class="head"><a href="javascript:alert('작동확인해외')">해외봉사</a></li>
		<li class="head"><a href="javascript:alert('작동확인봉사신청')">봉사 신청</a></li>
	</ul>
	</div>
	
	<div align="center">
		<ul>
			<li class=body><a href="javascript:alert('작동확인집짓기')">집짓기</a></li>
			<li class=body><a href="javascript:alert('작동확인집짓기')">주거환경개선</a></li>
			<li class=body><a href="javascript:alert('작동확인집짓기')">긴급/재난</a></li>
		</ul>
	</div>
	<h2 align="center"><b> 긴급/재난</b></h2>
	<p align="center"> 재난과 재해로 거처를 잃은 이웃들을 위한 이동식 주택을 짓습니다.</p>
	
	<br>
	
	<div align="center">
		<img src="${ pageContext.servletContext.contextPath }/image/image1.jpg" height="400px" alt="메인사진"/>
		<div align="left" style="position:flex; width:1400px; background:white; transform: transLateY(-90px); flex-direction: row;">
		<br><br><br><br><br> 
			<div align="left" style="display:inline-block; border-left: 2px solid blue; margin-left:100px; padding:10px;width:500px;">
			<h1>긴급/재난</h1>
			<h3>재난,재해 등 긴급한 주거 구호 활동을 위한 <br>
				이동식 주택 집짓기 활동을 전개하고 있습니다</h3>
			</div>
			
			<div style="display:inline-block; width:500px; margin-left:100px;padding:10px;">
			<p>home work는 국내에 재난피해가 발생했을 때 도움이 필요한 사람들에게
				봉사자와 함께 임시거처를 만들어줍니다. 긴급지원이 필요한 경우 자원봉사자들은
				이동식 주택 집짓기 봉사활동에 참여할 수 있습니다.</p>
			</div>
			<br>
			
			
			<hr>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<image src="${ pageContext.servletContext.contextPath }/image/image2.jpg"></image>
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-left:50px; justify-content: center;">
					<h2>밤새워 집을 ‘배달’하다
						수해지역 사랑의 집짓기<hr></h2>
					
					<p>2006년 홍수로 피해를 입은 강원도 인제와 평창지역에
						50채의 이동식 주택을 전달하였습니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-right:50px; justify-content: center;">
					<h2>이동식 결핵 병실,
						배에 실려 북으로 향하다<hr></h2>
					
					<p>2009년 북한의 결핵 환자들 요양 시설로 6채의 이동식 주택을
						전달하였습니다.</p>
				 </div>
				
				<image src="${ pageContext.servletContext.contextPath }/image/image3.jpg"></image>
				
			</div>
			
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<image src="${ pageContext.servletContext.contextPath }/image/image4.jpg"></image>
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-left:50px; justify-content: center;">
					<h2>희망의 집은 내일을 살아가는
						든든한 힘이 됩니다.<hr></h2>
					
					<p>2011년 서울광장에서 경북 영양 흙집에 살았던
						혜진이네 4남매에게 이동식 주택을 전달하였습니다.</p>
				 </div>
			</div>
			<div style=" margin-top: 100px;display:flex; flex-direction: row; margin: 100px;">
				<div align="center" style="display:flex;flex-direction: column; width:500px; margin-right:50px; justify-content: center;">
					<h2>산불피해 이재민 지원<hr></h2>
					
					<p>2019년 산불로 피해를 입은 강원도 고성에 12채의
						이동식 주택을 전달하였습니다.</p>
				 </div>
				
				<image src="${ pageContext.servletContext.contextPath }/image/image5.jpg"></image>
				
			</div>
			
			<div align="center"style="border:5px solid black;">
			<h2>이미지 넣고</h2>
			<h3>봉사 신청 게시판 가기</h3>
			<h4>조각코드로 구현하기 &lt%@ include</h4>
			</div>
		</div>
		
	</div>
	
</body>
</html>