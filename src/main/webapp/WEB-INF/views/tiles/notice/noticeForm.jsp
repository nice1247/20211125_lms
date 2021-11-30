<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#noticeFormName {
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
	padding: 10px;
	vertical-align: top;
	border-bottom: solid #ccc;
}
form > input {
	border: 1px solid rgb(128, 128, 128);
	border-radius: 10px;
	background-color: white;
	color: rgb(128, 128, 128);
	padding: 8px;
	margin-top: 15px
}

form > input:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
<div align="center">
	<div id="noticeFormName">공지사항 등록</div>
	<div>
		<form id="frm" action="noticeResister.do" method="post"> 
		<div>
			<table>
				<tr>
					<th width="150">작성자</th>
					<td width="150">${name }</td> 
					<th width="150">작성일자</th>
					<td width="150">
						<input type="date" id="wdate" name="wdate" style="height:25px">
					</td>
					
				</tr>
				<tr>
					<th>제 목</th>
					<td colspan="3">
						<input type="text" id="title" name="title" size="95">
					</td>
				</tr>
				<tr>
					<th>내 용</th>
					<td colspan="3">
						<textarea rows="6" cols="100" id="subject" name="subject"></textarea>
					</td>
				</tr>
				
			</table>
		</div><br>
			<input type="submit" value="저 장" > &nbsp;&nbsp;&nbsp;
			<input type="reset" onclick="history.back()" value="취 소">
		</form>
	</div>
<script type="text/javascript">
	document.getElementById('wdate').value = new Date().toISOString().substring(0, 10);
</script>
</div>
</body>
</html>