<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main page</title>
<style>
* {
	margin: 0;
	padding: 0;
}

html, body {
	width: 100%;
	height: 100%;
}

header {
	width: 100%;
	height: 10%;
	background: steelblue;
	color: white;
	line-height: 100px;
	text-align: center;
}

nav {
	width: 100%;
	height: 5%;
	background: grey;
	color: white;
	line-height: 45px;
	text-align: center;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav li {
	float: left;
	margin: 0 25px;
}

nav a {
	display: block;
	text-decoration: none;
	color: white;
}

nav a:HOVER {
	font-size: 1.1em;
	font-weight: bold;
}

section {
	width: 100%;
	height: 80%;
}

footer {
	width: 100%;
	height: 5%;
	background: grey;
	color: white;
	line-height: 45px;
	text-align: center;
	font-size: 0.9em;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	border: 2px solid grey;
}

tr, th, td {
	border: 1px solid black;
}

h2, h3 {
	text-align: center;
	margin: 15px auto;
}

#tr_btn{
	height: 50px;
}

#btn1{
	background: lightgrey;
	width: 120px;
	height: 28px;	
}

#btn2{
	background: black;
	color:white;
	width: 120px;
	height: 28px;	
}

.btn_group{
	margin: 15px auto;
}
</style>
</head>
<body>
	<header>
		<h1>수강신청 도우미 사이트</h1>
	</header>
</body>
</html>