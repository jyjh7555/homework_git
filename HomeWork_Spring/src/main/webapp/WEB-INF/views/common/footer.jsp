<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#footer-section {
		display:flex;
		background-color: #F1F7F7;
        width: 100%;
        text-align: center;
        padding: 10px 0;
        height:200px;
        flex-direction:row;
        align-items: flex-start;
	}
	
	#footer-logo {
		width:200px;
		height:200px;
		margin:0px 100px 0px 80px;
	}
	.inner {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        max-width: 1200px;
        margin: 0 auto;
    }
    .footer-column {
        flex: 1;
        margin: 10 10 30 10px;
        min-width: 200px;
    }
    .footer-column h4 {
        border-bottom: 2px solid #777;
        padding-bottom: 10px;
        margin-bottom: 10px;
    }
    .footer-column ul {
        list-style: none;
        padding: 0;
    }
    .footer-column ul li {
        margin: 5px 0;
    }
    .footer-column ul li a {
        color: black;
        text-decoration: none;
        transition: color 0.3s;
    }
    .footer-column ul li a:hover {
        color: #aaa;
    }
    .footer-social {
        margin: 20px 0;
    }
    .footer-social a {
        margin: 0 10px;
        color: black;
        text-decoration: none;
        font-size: 20px;
    }
    .footer-social a:hover {
        color: #aaa;
    }
    .footer-bottom {
        margin-top: 20px;
        border-top: 1px solid #777;
        padding-top: 10px;
        text-align:center;
    }
	
	

</style>
</head>
<body>
	<div id="footer-section">
            <div class="inner">
                <div class="footer-logo">
                    <a href="${ contextPath }"><img src="resources/image/newLogo.png" alt="로고" id="footer-logo"></a>
                </div>
                <div class="footer-column">
                <h4>Company</h4>
                <p>HomeWork</p>               
                <p>Phone: 010-0000-0000</p>
                <p>Email: rlarlfyd1258@naver.com</p>
            </div>
            <div class="footer-column">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="/about">About Us</a></li>
                    <li><a href="/services">Services</a></li>
                    <li><a href="/blog">Blog</a></li>
                    <li><a href="/contact">Contact</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h4>Support</h4>
                <ul>
                    <li><a href="/faq">FAQ</a></li>
                    <li><a href="/support">Support</a></li>
                    <li><a href="/terms">Terms of Service</a></li>
                    <li><a href="/privacy">Privacy Policy</a></li>
                </ul>
            </div>            
            </div>          
     </div>
     <div class="footer-bottom">
         <p>&copy; 2024 HomeWork. All rights reserved.</p>
     </div>
</body>
</html>