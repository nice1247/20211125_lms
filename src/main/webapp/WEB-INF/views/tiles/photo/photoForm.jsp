<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.form-control {
	width: 100%;
}

#photoFormName {
	font-weight: bolder;
	padding: 25px;
	font-size: x-large;
}

.container {
	padding: 10px;
	width: 650px;
	border: 1px #153d73;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

.col-sm-2 col-form-label {
	width: 250px;
	padding: 10px;
	font-weight: bold;
	vertical-align: middle;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.col-sm-10 {
	width: 500px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.photoFormWriteButton {
	align-content: right;
}
</style>
</head>
<body>
	<div id="photoFormName">사진 게시하기</div>

	<div class="container">
		<form action="photoResister.do" method="post"
			enctype="multipart/form-data">
			<div class="form-group row">
				<label for="inputTitle" class="col-sm-2 col-form-label"><strong>제목</strong></label>
				<div class="col-sm-10">
					<input type="text" name="title" class="form-control" id="title">
				</div>
			</div>

			<div class="form-group row">
				<label for="inputContent" class="col-sm-2 col-form-label"><strong>내용</strong></label>
				<div class="col-sm-10">
					<textarea name="subject" class="form-control" id="subject"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="inputFile" class="col-sm-2 col-form-label"><strong>첨부
						파일</strong></label>
				<div class="col-sm-10">
					<div class="custom-file" id="inputFile">
						<input name="image" type="file" class="custom-file-input"
							id="image">

					</div>
				</div>
			</div>
			<div class="photoFormWriteButton">
				<div class="col-auto mr-auto"></div>
				<div class="col-auto">
					<input class="btn btn-primary" type="submit" role="button"
						value="글쓰기">
				</div>
			</div>
		</form>
	</div>


</body>
</html>