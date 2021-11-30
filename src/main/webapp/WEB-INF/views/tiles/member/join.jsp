<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	
	function idCheck() {
		var id = $("#id").val();
		if (id == "") {
			alert("ID를 입력하세요.");
			$("#id").val("");
			return;
		}

		$.ajax({
			url : "ajaxIdCheck.do",
			type : "POST",
			data : {
				chkid : id
			},
			dataType : "text",
			success : function(data) {
				if (data == '1') {
					alert("사용할 수 있는 아이디 입니다.");
					$("#idchk").val("Yes");
					$("#password").focus();
				} else {
					alert(id + "는 이미 존재하는 아이디 입니다.");
					$("#id").val("");
					$("#id").focus();
				}
			},
			error : function(reject){
				console.log("Fail Fail Fail Fail Fail ");
			}
		});

	}
	function formCheck() {
		if ($("#idchk").val() != 'Yes') {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		if ($("#password").val() != $("#passwordChk").val()) {
			alert("패스워드가 일치 하지 않습니다.");
			$("#password").val("");
			$("#passwordChk").val("");
			$("#password").focus();
			return false;
		}

		$("#frm").submit();
	}
</script>
<style>
#joinformname {
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
	align-content : center;
}

#btn1:hover, #btn2:hover {
	background-color: rgb(128, 128, 128);
	color: white;
}
</style>
</head>
<body>
	<div id="joinformname">
		회원가입
	</div>
	<div>
		<form id="frm" action="memberJoin.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="150">* ID</th>
						<td width="300"><input type="text" id="id" name="id"
							required="required" placeholder="ID를 입력하세요" size="20">
							<button type="button" id="idchk" onclick="idCheck()" value="No">ID중복확인</button></td>
					</tr>
					<tr>
						<th width="150">* Password</th>
						<td width="150"><input type="password" id="password"
							name="password" required="required" placeholder="패스워드를 입력하세요"></td>
					</tr>
					<tr>
						<th width="150">* Password 확인</th>
						<td width="150"><input type="password" id="passwordChk"
							name="passwordChk" required="required"
							placeholder="패스워드를 다시 입력하세요"></td>
					</tr>
					<tr>
						<th width="150">* 이 름</th>
						<td width="150"><input type="text" id="name" name="name"
							required="required" placeholder="이름을 입력하세요"></td>
					</tr>
					<tr>
						<th width="150">전화번호</th>
						<td width="150"><input type="text" id="tel" name="tel"
							required="required" placeholder="연락처를 입력하세요"></td>
					</tr>
					<tr>
						<th width="150">주 소</th>
						<td width="150"><input type="text" id="address"
							name="address" size="50" required="required"
							placeholder="주소를 입력하세요"></td>
					</tr>
				</table>
			</div>
			<br> <input type="button" id="btn1" onclick="formCheck()" value="가입">&nbsp;&nbsp;&nbsp;
			<input type="reset" id="btn2" value="취 소">&nbsp;&nbsp;&nbsp;
		</form>
	</div>
</body>
</html>