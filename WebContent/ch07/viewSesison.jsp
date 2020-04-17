<%@ page contentType="text/html; charset=EUC-KR"
    %>
    <%@page import="java.util.Enumeration"%>
    
<%
	request.setCharacterEncoding("EUC-KR");
	
	String id = String.valueOf(session.getAttribute("logID"));
	String pwd = String.valueOf(session.getAttribute("logPWD"));
	
	out.println("id : " + id +", pwd:"+pwd+"<p>");
	
	Enumeration<String> en = session.getAttributeNames();
	while(en.hasMoreElements()) {
		
	}
	
%>