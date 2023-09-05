package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
    */
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      System.out.println("Hello World");
      
      
      // 응답객체에 인코딩 적용
      response.setCharacterEncoding("EUC-KR");
      
      // Web Page Text 및 Tag를 사용하기 위해서는 out객체가 필요!
      PrintWriter out = response.getWriter();
      String teacherip = request.getRemoteAddr();
      String jjakip = request.getRemoteAddr();
      String ip = request.getRemoteAddr();
      // 페이지를 요청한 client의 ip획득
      
      if(teacherip.equals( "192.168.0.107")) {
         out.print("<html>");
         out.print("<body>");
         out.print("<h1>안녕하세요</h1>");
         out.print("<img src='img1.jpg'></img>");
         out.print("</body>");
         out.print("</html>");;
      }else if(jjakip.equals("192.168.21.115")) {
         out.print("<html>");
         out.print("<body>");
         out.print("<h1>반값다 쫘식아</h1>");
         out.print("<img src='img.jpg'></img>");
         out.print("</body>");
         out.print("</html>");;
      }else {
         out.print("<html>");
         out.print("<body>");
         out.print("<h1>손님 받가워요</h1>");
         out.print("<img src='img.jpg'></img>");
         out.print("</body>");
         out.print("</html>");;
      }
      System.out.println(ip);
      
      
   }

}