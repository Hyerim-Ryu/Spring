<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<%=session.getAttribute("id")%>님 환영합니다. 
		<p><a href="../LogoutService">로그아웃</a></p>
		
	
</body>
</html>