<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addSub_process</title>
</head>
<body>
	<%@ include file="/DBconn.jsp"%>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String credit = request.getParameter("credit");
		String lecturer = request.getParameter("lecturer");
		String week = request.getParameter("week");
		String start_hour = request.getParameter("start_hour");
		String end_hour = request.getParameter("end_hour");
			
		try{
			String sql = "insert into subject0210 values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, credit);
			pstmt.setString(4, lecturer);
			pstmt.setString(5, week);
			pstmt.setString(6, start_hour);
			pstmt.setString(7, end_hour);
			pstmt.executeUpdate();
			System.out.println("등록 성공");
			%>
				<script>
					alert('등록이 완료되었습니다!')
					location.href='/HRD_0210/subject0210/selectSub.jsp';
				</script>
			
			<%
			
			
		}catch(SQLException e){
			System.out.println("등록 실패");
			%>
				<script>
					alert('등록 실패!')
					history.back(-1);
				</script>
			<%
			e.printStackTrace();
		}
	%>

</body>
</html>