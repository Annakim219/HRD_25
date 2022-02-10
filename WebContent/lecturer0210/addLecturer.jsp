<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강사 추가</title>
<style>
tr{
	height: 30px;	
}
th{
	width:120px;
	background:lightblue;
}
td{
	width:400px;
}
#in1{
	height:22px;
	margin-left:1px;
	width:50%
}
#sel1{
	height:25px;
	margin-left:5px;
	width:50%
}
#ra1{
	margin-left:5px;
}
</style>
<script>
	function check(){
		if(document.form.name.value==""){
			alert('강사명이 입력되지 않았습니다.');
			document.form.name.focus();
		}else if(document.form.major.value==""){
			alert('전공이 입력되지 않았습니다.');
			document.form.major.focus();
		}else if(document.form.field.value==""){
			alert('세부전공이 입력되지 않았습니다.');
			document.form.field.focus();
		}else{
			document.form.submit();
		}		
	}
</script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<%@ include file="/nav.jsp"%>
	<%@ include file="/DBconn.jsp"%>
	<section>
	<%
		int no_idx = 0;
		try{
			String sql = "select max(idx) from lecturer0210";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				no_idx = rs.getInt(1)+1;
			}
			
		}catch(SQLException e){
			System.out.println("ID 자동증가 조회 실패");
			e.printStackTrace();
		}
	%>
		<br>
		<h2>교과목 추가</h2>
		<form name="form" method="post" action="addLecturer_process.jsp">
			<table>
				<tr>
					<th>강사 ID</th>
					<td>
					<input id="in1" type="text" name="idx" value="<%=no_idx %>" readonly>
					<span>자동증가(마지막번호+1)</span>
					</td>
				</tr>
				<tr>
					<th>강 사 명</th>
					<td><input id="in1" type="text" name="name"></td>
				</tr>
				<tr>
					<th>전 공</th>
					<td><input id="in1" type="text" name="major"></td>
				<tr>
					<th>세부 전공</th>
					<td><input id="in1" type="text" name="field"></td>
				</tr>
				<tr id="tr_btn">
					<td colspan=2 align=center>
						<input id="btn1" type="button" value="목록" onclick="location.href='/HRD_0210/lecturer0210/selectLecturer.jsp'">
						<input id="btn1" type="button" value="등록" onclick="check()">					
					</td>
				</tr>					
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>