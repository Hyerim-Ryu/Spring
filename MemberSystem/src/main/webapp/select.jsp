<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Orbit', sans-serif;
}

body {
	background-color: #F4C2C2;
}
</style>
</head>
<body>
	<%
		// JDBC 순서
		// 0.드라이버 파일 프로젝트에 넣기
		// 1.드라이버 동적로딩	
		Class.forName("oracle.jdbc.driver.OracleDriver");
	
		// 2.커넥션 연결
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
	
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
		// 3. SQL문 실행
		String sql = "SELECT ID, NICK, EMAIL, PHONE, GENDER, AGE FROM MEMBER";
	
		PreparedStatement psmt = conn.prepareStatement(sql);
	
		ResultSet rs = psmt.executeQuery();
	
		out.print("<table border='1'>");
		out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
	
		while (rs.next()) {
			String id = rs.getString(1);
			String nick = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String gender = rs.getString(5);
			int age = rs.getInt(6);
	
			//System.out.println(id + "/" + nick + "/" + email + "/" + phone + "/" + gender + "/" + age);
	
			// id가 "admin"이 아닌 회원만 출력하는 조건
			if (!id.equals("admin")) {
				out.print("<tr>");
				out.print("<td>" + id + "</td>");
				out.print("<td>" + nick + "</td>");
				out.print("<td>" + email + "</td>");
				out.print("<td>" + phone + "</td>");
				out.print("<td>" + gender + "</td>");
				out.print("<td>" + age + "</td>");
				out.print("</tr>");
			}
		} //end while
			
		out.print("</table>");
	%>
</body>
</html>