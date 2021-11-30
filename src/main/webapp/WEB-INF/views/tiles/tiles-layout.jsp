<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>JJ's WebExam</title>
<meta name="description" content="">
<!-- 
    	Volton Template
    	http://www.templatemo.com/tm-441-volton
        -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/templatemo-style.css">
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<tiles:insertAttribute name="side" />
	<tiles:insertAttribute name="header" />
	<div class="main-content">
		<div class="fluid-container">
			<div class="content-wrapper">
				<tiles:insertAttribute name="body" />
				<tiles:insertAttribute name="foot" />
				<div class="content-wrapper"></div>
			</div>
		</div>
	</div>
</body>
</html>