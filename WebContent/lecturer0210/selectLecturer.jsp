<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교과목 조회</title>
<style>
.cnt{
	display: table;
	width: 650px;
	margin: 0 auto;	
	font-size:0.9em;
}
th{
	height: 35px;
	background: lightyellow;
}
td{
	height: 28px;
	text-align: center;
}
p{
	margin-left: 5px;
	text-align:left;
}
</style>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<%@ include file="/nav.jsp"%>
	<%@ include file="/DBconn.jsp"%>
	<section>
		<%
			int cnt = 0;

			try {
				String sql = " select count(*) from lecturer0210";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					cnt = rs.getInt(1);
				}
			} catch (SQLException e) {
				System.out.println("count 조회 실패");
				e.printStackTrace();
			}
		%>
		<br>
		<h2>교과목 목록</h2>
		<div class="cnt">
			<p>
				총 <b><%=cnt%>명</b>의 강사가 있습니다.
			</p>
		</div>
		<table>
			<tr>
				<th width=80>강사코드</th>
				<th width=80>강사명</th>
				<th width=200>전공</th>
				<th width=200>세부전공</th>
				<th width=100>관리</th>				
			</tr>
			<%
				try{
					String sql = " select * from lecturer0210 order by idx";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						String idx = rs.getString(1);
						String name = rs.getString(2);
						String major = rs.getString(3);
						String field = rs.getString(4);
						System.out.println("데이터 조회 성공");
			%>

			<tr>
				<td><%=idx %></td>
				<td><%=name %></td>
				<td><p><%=major %></p></td>
				<td><p><%=field %></p></td>
				<td>
					<a href='/HRD_0210/lecturer0210/updateLecturer.jsp?idx=<%=idx %>'>수정</a>
					<span>|</span>
					<a href='/HRD_0210/lecturer0210/deleteLecturer.jsp?idx=<%=idx %>' onclick="if(!confirm('정말로 삭제하시겠습니까?')){return false}">삭제</a>
				</td>
			</tr>
			<%
					}
					
				}catch (SQLException e) {
					System.out.println("데이터 조회 실패");
					e.printStackTrace();
				}
			%>
		</table>

		<div class="btn_group" align=center>
			<input id="btn2" type="button" value="작 성" onclick="location.href='/HRD_0210/lecturer0210/addLecturer.jsp'">
		</div>
	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>