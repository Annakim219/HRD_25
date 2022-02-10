<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교과목 추가</title>
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
	width:98%
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
		if(document.form.id.value==""){
			alert('교과목 코드가 입력되지 않았습니다.');
			document.form.id.focus();
		}else if(document.form.name.value==""){
			alert('교과목명이 입력되지 않았습니다.');
			document.form.name.focus();	
		}else if(document.form.credit.value==""){
			alert('학점이 입력되지 않았습니다.');
			document.form.credit.focus();	
		}else if(document.form.lecturer.value==""){
			alert('담당강사가 입력되지 않았습니다.');
			document.form.lecturer.focus();	
		}else if(document.form.week.value==""){
			alert('요일이 입력되지 않았습니다.');
			document.form.week.focus();
		}else if(document.form.start_hour.value==""){
			alert('시작시간이 입력되지 않았습니다.');
			document.form.start_hour.focus();
		}else if(document.form.end_hour.value==""){
			alert('종료시간이 입력되지 않았습니다.');
			document.form.end_hour.focus();			
		}else{
			document.form.submit();
		}		
	}
</script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<%@ include file="/nav.jsp"%>
	<section>
		<br>
		<h2>교과목</h2>
		<form name="form" method="post" action="addSub_process.jsp">
			<table>
				<tr>
					<th>교과목 코드</th>
					<td><input id="in1" type="text" name="id"></td>
				</tr>
				<tr>
					<th>과 목 명</th>
					<td><input id="in1" type="text" name="name"></td>
				</tr>
				<tr>
					<th>학 점</th>
					<td><input id="in1" type="text" name="credit"></td>
				</tr>				
				<tr>
					<th>담 당 강 사</th>
					<td>
					<select id="sel1" name="lecturer">
						<option value="" selected>담당강사 선택</option>
						<option value="1">김교수</option>
						<option value="2">이교수</option>
						<option value="3">박교수</option>
						<option value="4">우교수</option>
						<option value="5">최교수</option>
						<option value="6">강교수</option>
						<option value="7">황교수</option>						
					</select>
					</td>
				</tr>
				<tr>
					<th>요 일</th>
					<td>
					<input id="ra1" type="radio" name="week" value="1">월
					<input id="ra1" type="radio" name="week" value="2">화
					<input id="ra1" type="radio" name="week" value="3">수
					<input id="ra1" type="radio" name="week" value="4">목
					<input id="ra1" type="radio" name="week" value="5">금
					<input id="ra1" type="radio" name="week" value="6">토
					</td>
				</tr>
				<tr>
					<th>시 작</th>
					<td><input id="in1" type="text" name="start_hour"></td>
				</tr>
				<tr>
					<th>종 료</th>
					<td><input id="in1" type="text" name="end_hour"></td>
				</tr>
				<tr id="tr_btn">
					<td colspan=2 align=center>
						<input id="btn1" type="button" value="목록" onclick="location.href='/HRD_0210/subject0210/selectSub.jsp'">
						<input id="btn1" type="button" value="등록" onclick="check()">					
					</td>
				</tr>					
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>