package ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch03/postServlet")
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=EUC-KR");
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");
		PrintWriter out = resp.getWriter();
		out.println("<h1>Post Servlet</h1>");
		out.println("id:"+id+"<br>");
		out.println("pwd:"+pwd+"<br>");
		out.println("email:"+email+"<br>");
	}

}
