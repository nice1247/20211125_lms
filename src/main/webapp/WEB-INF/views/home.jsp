<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function idCheck() {
		$.ajax({
			url: "memberList.do",
			type: "post",
			dataType : "json",
			success: function(data){
				if(document.getElementsByTagName('table')){
					$("#wrap").children().remove();
					console.log("-----");
				}
				
				console.log(data);
				var tb = $("<table border='1' />");
				var row = $("<tr />").append(
						$("<th />").text("아이디"),
						$("<th />").text("이름"),
						$("<th />").text("연락처"),
						$("<th />").text("주소"),
						$("<th />").text("권한")
				);
				tb.append(row);
				
				for(var i in data){
					var id = data[i].id;
					var name = data[i].name;
					var tel = data[i].tel;
					var address = data[i].address;
					var author = data[i].author;
					
					row = $("<tr />").append(
							$("<td />").text(id),
							$("<td />").text(name),
							$("<td />").text(tel),
							$("<td />").text(address),
							$("<td />").text(author)
					);
					tb.append(row);
				}
				$("#wrap").append(tb);
			}
		});
	}

</script>
<style>
	th {
		background-color : black;
		color : white;
	}
</style>
</head>
<body>
<div align = "center">
	<div><h1>환영합니다.</h1></div>
	<h2><a href ="main.do">타일즈-</a></h2>
	<button type="button" onclick="idCheck()">멤버목록</button>
	<div><h1>멤버목록</h1></div>
	<div id="wrap"></div>
</div>

</body>
</html>