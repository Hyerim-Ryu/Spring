<%@page import="com.MemberDTO"%>
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
		session.setAttribute("id", "prettyryu");
	%>
	
	<%--
		EL의 조건
		- EL은 java의 저장된 아무 변수의 값을 꺼내서 쓸 수 있는것이 아니라
		Scope에 저장된 값만 꺼내서 사용할 수 있다
		* Scope 영역이란 - page, request, session, application
	 --%>
	
	<!-- session에 저장된 id라는 이름의 값을 웹페이지에 표현하시오 -->
	${id} 님 환영합니다!
	
	<%--
		EL의 다양한 연산자		
	 --%>
	 <%
	 	pageContext.setAttribute("num", 10);
		pageContext.setAttribute("isCheck", true);
	 %>
	 ${num} <br>
	 ${num + 10} <br>
	 ${num - 5} <br>
	 ${num * 30} <br>
	 ${num / 2} ${num div 2} <br>
	 ${num % 3} ${num mod 3} <br>
	 <hr>
	 ${num > 5 && num > 3}
	 ${num > 5 and num > 3} <br>
	 ${num > 5 || num > 3}
	 ${num > 5 or num > 3} <br>
	 <hr>
	 ${isCheck} <br>
	 ${!isCheck} ${not isCheck} <br>
	 ${num > 3} ${num gt 3} <br>
	 ${num < 20} ${num lt 20} <br>
	 ${num >= 3} ${num ge 3} <br>
	 ${num <= 20} ${num le 20} <br>
	 ${num == 10} ${num eq 10} <br>
	 ${num != 20} ${num ne 20} <br>
	 <hr>
	 
	 <%--
	 	EL에서 DTO를 가져오면 어떻게 가져올까?
	  --%>
	  
	  <%
	  	MemberDTO dto = new MemberDTO("hrhr","1234","혜프로","광주"); // 객체생성
	  	pageContext.setAttribute("dto", dto); // dto 라는 이름으로 dto 객체 저장 
	  %>
	  
	  <!-- page영역에 저장된 dto의 아이디 값을 표현식을 사용하여 웹페이지에 표현하시오 -->
	  <% 
	  	MemberDTO info = (MemberDTO)pageContext.getAttribute("dto"); 
	  %>
	  
	  <%= info.getId() %>
	  
	  <!-- 
	  	EL 사용하여 dto안에 있는 private 필드값을 가져오기위해서는
	  	반드시 getter메소드가 필요하다
	   -->
	  ${dto.id}
	  ${dto.pw}
	  ${dto.nick}
	  ${dto.addr}
	  <hr>
	  
	  <!-- 만약 el로 없는 값을 가져오면 어떻게 될까? -->
	  ${empty good}
	  ${not empty good}
	  <hr>
	  <!-- 
	  	만약에 동일한 이름의 값이 여러 영역에 들어가있다면
	  	EL에서는 어떻게 값을 가져올까
	  	
	  	EL에서 값을 가져오겠다 ex) ${name} 하게 되는 순간
	  	EL은 pageContext영역부터 name의 값이 있는지 찾게된다
	  	
	  	찾는 순서
	  	page -> request -> session -> application
	  	
	  	그런데
	  	내가 EL에서 특정영역에만 찾고자할 때 name 앞에 특정영역 Scope를 붙혀준다
	   -->
	   
	   <%
	   	pageContext.setAttribute("name", "류햇님");
	   	request.setAttribute("name", "송태양");
	   	session.setAttribute("name", "염다영");
	   	application.setAttribute("name", "박병관");
	   %>
	   
	   ${sessionScope.name}

</body>
</html>