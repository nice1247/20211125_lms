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
		frm.action= "memberEditSave.do";
		frm.submit();
	});
	$("#btn2").click(function(){
		frm.action = "memberInfo.do";
		frm.submit();
	});
});
</script>
<style>
#memberUpdateName {
	padding: 25px;
	font-size: larger;
	font-weight: bolder;
}

table {
	border: 1px solid #ccc;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	margin: 20px 10px;
}

table th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background: #ececec;
}

table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
#btn1,#btn2 {
	border: 1px solid rgb(128, 128, 128);
	border-radius: 10px;
	background-color: white;
	color: rgb(128, 128, 128);
	padding: 8px;
	margin-top: 15px
}

#btn1:hover, #btn2:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
<div align="center">
		<div id="memberUpdateName">
			나의 정보 수정
		</div>
		<div>
			<form id="frm" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">ID</th>
							<td width="150">${member.id }</td>
							<th width="150">이름</th>
							<td width="150"><input type="text" id="name" name="name" value="${member.name }"></td>
						</tr>
						<tr>
							<th>Password</th>
							<td><input type="password" id="password" name="password" value="${member.password }"></td>	
							<th>Password확인</th>
							<td><input type="password" id="passwordChk" name="passwordChk" value="${member.password }"></td>						
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" id="tel" name="tel" value="${member.tel }"></td>
							<th>권 한</th>
							<td>${member.author }</td>
						</tr>
						<tr>
							<th>주 소</th>
							<td colspan="3"><input type="text" id="address" name="address"  size="60" value="${member.address }"></td>
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
					<input type="hidden" id="id" name="id" value="${member.id }">
					<input type="hidden" id="name" name="name" value="${member.name }">
					<input type="hidden" id="author" name="author" value="${member.author }">
					<input type="hidden" id="address" name="address" value="${member.address }">
				</div>

			</form>
		</div>
	</div>


</body>
</html>