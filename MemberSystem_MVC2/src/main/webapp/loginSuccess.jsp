<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		String nick = request.getParameter("nick");
	%>
	<h2><%= nick %>님 환영합니다!</h2>
</body>
</html>