<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			nofrm.action = "noticeUpdate.do";
			nofrm.submit();
		});
		$("#btn2").click(function() {
			Swal.fire({
				text : "이 글을 삭제하시겠습니까?",
				showCancelButton: true,
				confirmButtonText : '삭제',
				cancelButtonText : '취소'
			}).then((result)=>{
			if (result.isConfirmed){
				Swal.fire(
						nofrm.action = "noticeDelete.do",
						nofrm.submit()
				)
			}
			})
			
		});
	});
</script>
<style>
#noticeReadName {
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

#btn, #btn1, #btn2 {
	border: 1px solid rgb(128, 128, 128);
	border-radius: 10px;
	background-color: white;
	color: rgb(128, 128, 128);
	padding: 8px;
	margin-right: 10px;
}

#btn:hover, #btn1:hover, #btn2:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
	<div align="center">
		<div id="noticeReadName">공지사항 상세보기</div>
		<div>
			<table border="1">
				<tr>
					<th width="150">작성자</th>
					<td width="150">${notice.name }</td>
					<th width="150">작성일자</th>
					<td width="150">${notice.wdate }</td>
				</tr>
				<tr>
					<th>제 목</th>
					<td colspan="3">${notice.title }</td>
				</tr>
				<tr>
					<th>내 용</th>
					<td colspan="3" style="height: 100px">${notice.subject }</td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${notice.name eq member.name }">
				<button type="button" id="btn1">글 수정</button>
				<button type="button" id="btn2">글 삭제</button>
			</c:if>
		</div>
		<br>
		<div>
			<form id="frm">
				<button type="button" id="btn" onclick="history.back()">목록가기</button>
			</form>
		</div>
		<div>
			<form id="nofrm" method="get">
				<input type="hidden" id="no" name="no" value="${notice.no }">
			</form>
		</div>
	</div>
</body>
</html>