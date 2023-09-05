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
	<%--
		ID와 PW값을 먼저 가져온다음
		ID와 PW가 일치하는 회원의 정보를 삭제
		
		삭제 성공 -> main.jsp 이동
		삭제 실패 -> delete.jsp 이동
	 --%>
	 <%
	 	request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
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
		
		// 3.SQL문 실행
		String sql = "DELETE FROM MEMBER WHERE ID =? AND PW =?";

		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		cnt = psmt.executeUpdate();
		
		if (psmt != null) {
			psmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		
		if(cnt>0){
			// 회원탈퇴 성공
			out.print("<script>");
            out.print("alert('회원탈퇴 성공!');");
          	out.print("location.href='main.jsp'");
          	out.print("</script>");

			//response.sendRedirect("main.jsp");
		}else{
			// 회원탈퇴 실패
			response.sendRedirect("delete.jsp");
		}
		
	 %>
</body>
</html>