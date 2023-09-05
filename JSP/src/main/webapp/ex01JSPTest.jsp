<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* CSS 주석 */
</style>
<script type="text/javascript">
// JS 주석
</script>
</head>
<body>
	<!-- 각종 주석 설명
		<!-- HTML 주석 -->
	 <%-- JSP주석 --%>
	<h1>오늘은 금요일</h1>
	<%
		int num = 10;
		String name = "호두아빠";
	%>
	
	<%
		int age = 20;
		
		int size = 20;
		String color = "yellow";
	
	
	
	
	%>
	
	<%= name %>
	
	<hr size = "<%=size %>" color="<%=color %>">
	
</body>
</html>