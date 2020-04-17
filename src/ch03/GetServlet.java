package ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch03/getServlet")
public class GetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		//"msg"는 form에 input 타입의 name값 반드시 일치(대문자구분)
		String msg = request.getParameter("msg");
		PrintWriter out = response.getWriter();
		out.println("<h1>Get Servlet</h1>");
		out.println("msg : " + msg);
	}
}





