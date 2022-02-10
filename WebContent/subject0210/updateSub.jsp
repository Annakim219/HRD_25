<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교과목 수정</title>
<style>
tr{
	height: 30px;	
}
th{
	width:120px;
	background:lightblue;
}
td{
	width:580px;
}
#in1{
	height:22px;
	margin-left:1px;
	width:99%
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
	<%@ include file="/DBconn.jsp"%>
	<section>
		<%	
			DecimalFormat df = new DecimalFormat("0000");
			String send_id = request.getParameter("id");
		
			try{
				String sql = "select * from subject0210 where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, send_id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					String id = rs.getString(1);
					String name = rs.getString(2);
					String credit = rs.getString(3);
					String lecturer = rs.getString(4);
					String week = rs.getString(5);
					String start_hour = rs.getString(6);
					String end_hour = rs.getString(7);
					System.out.println("데이터 조회 성공");
		%>

		<br>
		<h2>교과목</h2>
		<form name="form" method="post" action="updateSub_process.jsp">
			<table>
				<tr>
					<th>교과목 코드</th>
					<td><input id="in1" type="text" name="id" value="<%=id %>" readonly></td>
				</tr>
				<tr>
					<th>과 목 명</th>
					<td><input id="in1" type="text" name="name" value="<%=name %>"></td>
				</tr>
				<tr>
					<th>학 점</th>
					<td><input id="in1" type="text" name="credit" value="<%=credit %>"></td>
				</tr>				
				<tr>
					<th>담 당 강 사</th>
					<td>
					<select id="sel1" name="lecturer">
						<option value="" <%if(lecturer.equals("")){%>selected<%}%>>담당강사 선택</option>
						<option value="1" <%if(lecturer.equals("1")){%>selected<%}%>>김교수</option>
						<option value="2" <%if(lecturer.equals("2")){%>selected<%}%>>이교수</option>
						<option value="3" <%if(lecturer.equals("3")){%>selected<%}%>>박교수</option>
						<option value="4" <%if(lecturer.equals("4")){%>selected<%}%>>우교수</option>
						<option value="5" <%if(lecturer.equals("5")){%>selected<%}%>>최교수</option>
						<option value="6" <%if(lecturer.equals("6")){%>selected<%}%>>강교수</option>
						<option value="7" <%if(lecturer.equals("7")){%>selected<%}%>>황교수</option>						
					</select>
					</td>
				</tr>
				<tr>
					<th>요 일</th>
					<td>
					<input id="ra1" type="radio" name="week" value="1" <%if(week.equals("1")){%>checked<%}%>>월
					<input id="ra1" type="radio" name="week" value="2" <%if(week.equals("2")){%>checked<%}%>>화
					<input id="ra1" type="radio" name="week" value="3" <%if(week.equals("3")){%>checked<%}%>>수
					<input id="ra1" type="radio" name="week" value="4" <%if(week.equals("4")){%>checked<%}%>>목
					<input id="ra1" type="radio" name="week" value="5" <%if(week.equals("5")){%>checked<%}%>>금
					<input id="ra1" type="radio" name="week" value="6" <%if(week.equals("6")){%>checked<%}%>>토
					</td>
				</tr>
				<tr>
					<th>시 작</th>
					<td><input id="in1" type="text" name="start_hour" value="<%=df.format(Integer.parseInt(start_hour))%>"></td>
				</tr>
				<tr>
					<th>종 료</th>
					<td><input id="in1" type="text" name="end_hour" value="<%=df.format(Integer.parseInt(end_hour))%>"></td>
				</tr>
				<tr id="tr_btn">
					<td colspan=2 align=center>
						<input id="btn1" type="button" value="목록" onclick="location.href='/HRD_0210/subject0210/selectSub.jsp'">
						<input id="btn1" type="button" value="수정" onclick="check()">					
					</td>
				</tr>					
			</table>
		</form>
		<%
				}
							
			}catch(SQLException e){
				System.out.println("데이터 조회 실패");
				e.printStackTrace();
			}
		%>	
	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>