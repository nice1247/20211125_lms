<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	border: 1px solid skyblue;
	border-radius: 5px;
	background-color: white;
	color: skyblue;
	padding: 5px;
	margin-top: 15px;
}

button:hover {
	color: white;
	background-color: skyblue;
}
</style>

</head>
<body>
	<!-- PROJECTS -->
	<div class="page-section" id="projects">
		<div class="row">
			<div class="col-md-12">
				<h4 class="widget-title">Your Photos</h4>
				<p>당신의 사진을 마음껏 표현해보세요 !</p>
			</div>
		</div>
		<div class="row projects-holder">

			<c:forEach items="${photos }" var="photo">
				<div class="col-md-4 col-sm-6">
					<div class="project-item">
						<img src="img/${photo.image }" alt="">
						<div class="project-hover">
							<div class="inside">
								<h5>
									<a href="#">${photo.title }</a>
								</h5>
								<p>${photo.subject }</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>



			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/1.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Aliquam cursus</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/2.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Aliquam cursus</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/3.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Aliquam cursus.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/4.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus
								bibendum massa et nisl tempus commodo.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/5.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus
								bibendum massa et nisl tempus commodo.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="img/6.jpg" alt="">
					<div class="project-hover">
						<div class="inside">
							<h5>
								<a href="#">Pellentesque porta ligula</a>
							</h5>
							<p>Quisque mattis sit amet dolor eu scelerisque. Vivamus
								bibendum massa et nisl tempus commodo.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .projects-holder -->
	</div>
	<div align="right">
		<c:if test="${not empty id }">
			<button type="button" onclick="location.href='photoForm.do'">사진
				올리기</button>
		</c:if>
	</div>
</body>
</html>