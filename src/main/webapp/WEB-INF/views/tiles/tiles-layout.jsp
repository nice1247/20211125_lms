<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div>
		<table border="1">
			<tr>
				<td colspan="2">
					<tiles:insertAttribute name="header"/>
				</td>
			</tr>
			<tr>
				<td width= "120" height="250">
					<tiles:insertAttribute name="side"/>
				</td>
				<td width = "250">
					<tiles:insertAttribute name="body"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<tiles:insertAttribute name="foot"/>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>