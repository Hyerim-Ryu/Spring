<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
	body{
		background-color: #F4C2C2;
	}
</style>
</head>
<body>
	<%--
		ID, PW 두개의 정보를 받아와서
		로그인을 한다음
		로그인 성공한 사람의 닉네임 콘솔에 출력
	 --%>
	<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String nick = null;

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
	String sql = "select * from member where id =? and pw =?";
	
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	ResultSet rs = psmt.executeQuery();
	
	if(rs.next()) {
		// 로그인 성공		
		nick = rs.getString("NICK");
		
		System.out.println(nick);
	}
	
	if(rs != null)
		rs.close();
	if(psmt != null)
		psmt.close();
	if(conn != null)
		conn.close();
	
	// 로그인 성공시 -> loginSuccess.jsp
	// 로그인 실패시 -> login.jsp
	
	if(nick!=null){
		nick = URLEncoder.encode(nick, "EUC-KR");
		response.sendRedirect("loginSuccess.jsp?nick="+nick);
	}else {
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>