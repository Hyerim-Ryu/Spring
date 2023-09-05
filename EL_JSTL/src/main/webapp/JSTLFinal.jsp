<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("제니");
		idol.add("지수");
		idol.add("로제");
		idol.add("원영");
		idol.add("리사");
		pageContext.setAttribute("idol", idol);
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}
	</c:forEach>
	<br><hr>
	
	<%
		MemberDTO dto1 = new MemberDTO("jenny","1234","제니","강남");
		MemberDTO dto2 = new MemberDTO("lisa","1234","리사","청담동");
		MemberDTO dto3 = new MemberDTO("jisu","1234","지수","강남");
		MemberDTO dto4 = new MemberDTO("rose","1234","로제","서울");
		MemberDTO dto5 = new MemberDTO("wonyoung","1234","장원영","논현");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		
		pageContext.setAttribute("list", list);
		
	%>
	<table border="1px" bgcolor="pink">
		<tr>
			<td>번호</td>
			<td>아이디</td>					
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<!-- 여기아래에 JSTL을 통해서 list안에 있는 회원의 정보를 출력 -->
		<c:forEach varStatus="i" items="${list}" var="dto">
			<tr>
				<td>${i.count}</td>
				<td>${dto.id}</td>					
				<td>${dto.pw}</td>
				<td>${dto.nick}</td>
				<td>${dto.addr}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>