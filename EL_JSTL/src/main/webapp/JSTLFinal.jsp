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
		idol.add("����");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		pageContext.setAttribute("idol", idol);
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}
	</c:forEach>
	<br><hr>
	
	<%
		MemberDTO dto1 = new MemberDTO("jenny","1234","����","����");
		MemberDTO dto2 = new MemberDTO("lisa","1234","����","û�㵿");
		MemberDTO dto3 = new MemberDTO("jisu","1234","����","����");
		MemberDTO dto4 = new MemberDTO("rose","1234","����","����");
		MemberDTO dto5 = new MemberDTO("wonyoung","1234","�����","����");
		
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
			<td>��ȣ</td>
			<td>���̵�</td>					
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<!-- ����Ʒ��� JSTL�� ���ؼ� list�ȿ� �ִ� ȸ���� ������ ��� -->
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