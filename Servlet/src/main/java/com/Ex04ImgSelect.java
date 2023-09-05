package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		

		// TODO Auto-generated method stub
		String select = request.getParameter("select");
			
	         out.print("<html>");
	         out.print("<body>");
	         if(select.equals("1")) {
	        	 out.print("<h1>나는광식</h1>");
	        	 out.print("<img src='img/img1.jpg' width=500px>");
	         } else if (select.equals("2")) {
	        	 out.print("<h1>칭구랑한컷</h1>");
	        	 out.print("<img src='img/img2.png'>");
	         } else if (select.equals("3")) {
	        	 out.print("<h1>모르는여자</h1>");
	        	 out.print("<img src='img/img3.jpg'>");
	         } else {
	        	 out.print("1,2,3 nono");
	         }
	         out.print("</body>");
	         out.print("</html>");
		System.out.println(select);
	}

}
