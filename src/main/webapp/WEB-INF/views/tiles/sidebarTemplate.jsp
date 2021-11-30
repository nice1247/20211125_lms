<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- SIDEBAR -->
	<div class="sidebar-menu hidden-xs hidden-sm">
		<div class="top-section">
			<div class="profile-image">
				<img src="img/profile.jpg" alt="Volton">
			</div>
			<h3 class="profile-title">JaeJun's</h3>
			<p class="profile-description">Digital Photography</p>
		</div>
		<!-- top-section -->
		<div class="main-navigation">
			<ul class="navigation">
				<li><a href="main.do"><i class="fa fa-globe"></i>Welcome</a></li>
				<li><a href="noticeList.do"><i class="fa fa-pencil"></i>Free
						Board</a></li>
				<li><a href="photoList.do"><i class="fa fa-paperclip"></i>
						Gallery</a></li>
				<c:if test="${not empty id }">
					<li><a href="memberInfo.do"><i class="fa fa-link"></i>My
							Page</a></li>
					<li><a href="logout.do"><i class="fa fa-link"></i>Logout</a></li>
				</c:if>
				<c:if test="${empty id }">
					<li><a href="login.do"><i class="fa fa-link"></i>Login</a></li>
				</c:if>
			</ul>
		</div>
		<!-- .main-navigation -->
		<div class="social-icons">
			<ul>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				<li><a href="#"><i class="fa fa-rss"></i></a></li>
			</ul>
		</div>
		<!-- .social-icons -->
	</div>
	<!-- .sidebar-menu -->
</body>
</html>