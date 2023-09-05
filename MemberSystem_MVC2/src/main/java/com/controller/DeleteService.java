package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(id,pw);
		
		// JDBC를 사용하는 기능은 전부 dao가 처리
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.delete(dto);
		
		
		if(cnt>0){
			// 회원탈퇴 성공			
			response.sendRedirect("main.jsp");
		}else{
			// 회원탈퇴 실패
			response.sendRedirect("delete.jsp");
		}
	}

}
