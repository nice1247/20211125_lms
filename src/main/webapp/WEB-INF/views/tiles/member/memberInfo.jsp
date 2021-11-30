<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#btn1").click(function() {
			frm.action = "memberUpdate.do";
			frm.submit();
		});
		$("#btn2").click(function() {
			Swal.fire({
				text : "정말 회원탈퇴를 원하십니까?",
				showCancelButton: true,
				confirmButtonText : '승인',
				cancelButtonText : '취소'
			}).then((result)=>{
			if (result.isConfirmed){
				Swal.fire(
						frm.action = "memberDelete.do",
						frm.submit()
				)
			}
			})
			
		});
	});
</script>
<style>
#memberInfoName {
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
		<div id="memberInfoName">나의 정보 보기</div>
		<div>
			<table>
				<tr>
					<th width="150">ID</th>
					<td width="150">${member.id }</td>
					<th width="150">이름</th>
					<td width="150">${member.name }</td>
				</tr>
				<tr>
					<th>Password</th>
					<td>********</td>
					<th>권 한</th>
					<td>${member.author }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td colspan="3">${member.tel }</td>
				</tr>
				<tr>
					<th>주 소</th>
					<td colspan="3">${member.address }</td>
				</tr>

			</table>
		</div>
		<br>
		<div>
			<button type="button" id="btn1">수 정</button>
			&nbsp;&nbsp;&nbsp;
			<button type="button" id="btn2">회원탈퇴</button>
		</div>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="id" name="id" value="${member.id }">
			</form>
		</div>
	</div>

</body>
</html>