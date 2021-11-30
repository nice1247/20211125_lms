<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		frm.action= "noticeEditSave.do";
		frm.submit();
	});
	$("#btn2").click(function(){
		frm.action = "noticeRead.do";
		frm.submit();
	});
});
</script>
<style>
#noticeUpdateFormName {
	font-weight: bolder;
	padding: 40px;
	font-size: x-large;
}

table {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: 20px 10px;
}

table th {
	text-align: center;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #231141;
}

table td {
	text-align: left;
	padding: 10px;
	vertical-align: top;
	border-bottom: solid #ccc;
}
#btn, #btn1,#btn2 {
	border: 1px solid rgb(128, 128, 128);
	border-radius: 10px;
	background-color: white;
	color: rgb(128, 128, 128);
	padding: 8px;
	margin-top: 15px
}

#btn:hover, #btn1:hover, #btn2:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
<div align="center">
		<div id="noticeUpdateFormName">
			글 수정
		</div>
		<div>
			<form id="frm" method="post">
				<div>
					<table>
						<tr>
							<th width="150">ID</th>
							<td width="150">${notice.id }</td>
							<th width="150">이름</th>
							<td width="150">${notice.name }</td>
						</tr>
						
						<tr>
							<th>글 번호</th>
							<td>${notice.no }</td>
							<th>작성일자</th>
							<td>${notice.wdate }</td>
						</tr>
						<tr>
							<th>제 목</th>
							<td colspan="3"><input type="text" id="title" name="title"  size="60" value="${notice.title }"></td>
						</tr>
						<tr>
							<th>내 용</th>
							<td colspan="3"><input type="text" id="subject" name="subject"  style="height:100px" size="60" value="${notice.subject }"></td>
						</tr>

					</table>
				</div>
				<br>
				<div>
					<button type="button" id="btn1">저장하기</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" id="btn2">수정취소</button>
				</div>
				<div>
					<input type="hidden" id="no" name="no" value="${notice.no }">
					<input type="hidden" id="title" name="title" value="${notice.title }">
					<input type="hidden" id="subject" name="subject" value="${notice.subject }">
				</div>

			</form>
		</div>
	</div>




</body>
</html>