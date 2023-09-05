package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.CoffeeDTO;

@WebServlet("/JavaToJson")
public class Ex04JavaToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 5개의 커피정보를 보관하는 ArrayList를 생성
		ArrayList<CoffeeDTO> list = new ArrayList<>();
		list.add(new CoffeeDTO("아메리카노", 5000, "S"));
		list.add(new CoffeeDTO("카페라떼", 5500, "M"));
		list.add(new CoffeeDTO("오렌지에이드", 5800, "L"));
		list.add(new CoffeeDTO("카푸치노", 6000, "M"));
		list.add(new CoffeeDTO("아인슈페너", 7000, "S"));
		
		//Java객체 -> JSON 데이터로 변환
		Gson gson = new Gson();
		String jsonArr = gson.toJson(list);
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonArr);
		//System.out.println(jsonArr);
	}

}
