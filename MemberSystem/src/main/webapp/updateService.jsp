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
</head>
<body>
	<%
	// id, pw, nick, email, phone, gender, age
	// 위의 값을 먼저 다 가져온 다음
	// id와 pw가 일치하는 계정을 찾아
	// 입력한 nick, email, phone, gender, age를 수정하시오

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	int age = Integer.parseInt(request.getParameter("age"));
	
	int cnt = 0;

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
	String sql = "UPDATE MEMBER SET NICK=?, EMAIL=?, PHONE=?, GENDER=?, AGE=? WHERE ID =? AND PW =?";

	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, nick);
	psmt.setString(2, email);
	psmt.setString(3, phone);
	psmt.setString(4, gender);
	psmt.setInt(5, age);
	psmt.setString(6, id);
	psmt.setString(7, pw);
	
	cnt = psmt.executeUpdate();
	// 4. 연결종료
	if (psmt != null) {
		psmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	// 영향을 받은 행이 있는지 없는지에 대한 결과값을 받아온다.
	// 수정 성공시 -> main.jsp 이동
	// 수정 실패시 -> update.jsp 이동
	if(cnt>0){
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("update.jsp");
	}
	%>
</body>
</html>