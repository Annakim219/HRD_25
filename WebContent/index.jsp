<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main page</title>
<style>
.index_text {
	margin-left: 80px;
}

p {
	font-weight: bold;
	font-size: 1.1em;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section>
		<br>
		<h2>수강신청 도우미 시스템</h2>

		<div class="index_text">
			<p>수강신청 도우미 시스템을 작성한다.</p>
			<ol>
				<li>수강신청 데이터베이스를 구축한다.</li>
				<li>수강신청 테이블에 샘플데이터를 SQL문을 사용하여 데이터를 추가생성한다.</li>
				<li>주어진 화면디자인을 이용하여 화면을 디자인한다.</li>
				<li>업무요건에 따라 프로그램을 작성한다.</li>
			</ol>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>