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
		// 세션에 모든 데이터를 삭제하는 방법
		// - 로그아웃기능을 구현할 때
		session.invalidate();
	%>
</body>
</html>