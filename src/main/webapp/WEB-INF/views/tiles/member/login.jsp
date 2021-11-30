<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function inputCheck() {
		if (frm.id.value == "") {
			alert("아이디를 입력하세요.");
			frm.id.focus();
			return false;
		} else if (frm.password.value == "") {
			alert("패스워드를 입력하세요.");
			frm.password.focus();
			return false;
		}
		return frm.submit();
	}
</script>
<style>
#loginName {
	font-weight: bolder;
	padding: 40px;
	font-size: x-large;
}

#frm {
	height: 500px;
}

.main-content {
	background-color: rgb(255, 231, 196);
}

.btn {
	border: 1px solid rgb(237, 148, 255);
	border-radius: 5px;
	background-color: white;
	color: rgb(237, 148, 255);
	padding: 5px;
	margin-top: 15px
}

.btn:hover {
	background-color: rgb(237, 148, 255);
	color: white;
}

th {
	height: 35px;
}
</style>
</head>
<body>
	<div align="center">

		<div id="loginName">
				<strong>로 그 인</strong>
		</div>
		<div>
			<form id="frm" action="loginGo.do" method="post">
				<div>
					<table>
						<tr>
							<th width="150">아 이 디</th>
							<td width="200"><input type="text" id="id" name="id">
							</td>
						</tr>
						<tr>
							<th width="150">패스워드</th>
							<td width="200"><input type="password" id="password"
								name="password"></td>
						</tr>
					</table>
				</div>
				<br> <input type="button" class="btn" onclick="inputCheck()"
					value="로그인">&nbsp;&nbsp;&nbsp; <input type="reset"
					class="btn" value="취 소">&nbsp;&nbsp;&nbsp; 
					
					 <input
					type="button" class="btn" onclick="location.href='gojoin.do'"
					value="회원가입">
			</form>
		</div>
		<br>

	</div>
</body>
</html>