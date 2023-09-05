package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String birthday = request.getParameter("birthday");
		String color = request.getParameter("color");
		String[] hobby = request.getParameterValues("hobby");
		String talk[] = request.getParameterValues("textarea");
		
		out.print("<html>");
		out.print("<body>");
		out.print("ID : "+id+"<br>");
		out.print("NAME : "+name+"<br>");
		out.print("EMAIL : "+email+"<br>");
		out.print("TEL : "+tel+"<br>");
		out.print("GENDER : "+gender+"<br>");
		out.print("COUNTRY : "+country+"<br>");
		out.print("BIRTH : "+birthday+"<br>");
		out.print("COLOR : "+color+"<br>");
		out.print("HOBBY : ");
		for (int i = 0; i < hobby.length; i++) {
			out.print(hobby[i]);
		}
		out.print("<br>");
		out.print("TALK : ");
		for (int i = 0; i < talk.length; i++) {
			out.print(talk[i]);
		}
		out.print("</body>");
		out.print("</html>");
		
	}

}
