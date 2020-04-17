package ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ExampleServlet1
 */
@WebServlet("/ch03/exampleServlet1")
public class ExampleServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=EUC-KR");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>이클립스로 서블릿 만들기</h1>");
		out.println("sessionID: "+session.getId());
		out.println("</body>");
		out.println("<html>");
		System.out.println("어디서 보일까요?");
	}
}
