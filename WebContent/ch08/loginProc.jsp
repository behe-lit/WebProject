<%@ page contentType="text/html; charset=EUC-KR"
    %>
<jsp:useBean id="register" class="ch08.RegisterMgr"></jsp:useBean>  
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String login = request.getParameter("login");
	
	boolean result = register.loginRegister(id, pwd);
	
	if(session.getAttribute("userID")!=null) {
		id = (String) session.getAttribute("userID");
	}
	
	
	if(result == true) {
		session.setAttribute("userID",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α��� �����Դϴ�.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	
	
%>