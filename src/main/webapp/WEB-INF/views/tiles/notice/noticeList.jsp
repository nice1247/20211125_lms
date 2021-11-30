<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function noticeRead(str) {
		frm.no.value = str;
		frm.submit();
	}
</script>
<style>
#noticeListName {
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

tr:hover {
	color: white;
	background-color: #231141;
}

#btn {
	border: 1px solid rgb(128, 128, 128);
	border-radius: 10px;
	background-color: white;
	color: rgb(128, 128, 128);
	padding: 8px;
	margin-top: 15px
}

#btn:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
	<div align="center">
		<div id="noticeListName">공지사항 리스트</div>
		<div>
			<table>
				<tr>
					<th width="70">No</th>
					<th width="100">작성자</th>
					<th width="300">제 목</th>
					<th width="100">작성일자</th>
				</tr>
				<c:forEach items="${notices}" var="notice">
					<tr onclick="noticeRead('${notice.no}')">
						<td>${notice.no }</td>
						<td>${notice.name }</td>
						<td>${notice.title }</td>
						<td>${notice.wdate }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${not empty id }">
				<button type="button" id="btn"
					onclick="location.href='noticeForm.do'">글쓰기</button>
			</c:if>
		</div>
		<div>
			<form id="frm" action="noticeRead.do" method="post">
				<input type="hidden" id="no" name="no">
			</form>
		</div>
	</div>

</body>
</html>