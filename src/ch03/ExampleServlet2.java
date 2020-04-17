package ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ch03/exampleServlet2")
public class ExampleServlet2 extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("init호출");
	
	}
	
	@Override
	public void destroy() {
		System.out.println("des호출");
	
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		System.out.println("serv호출");
	}
	
	
	}

