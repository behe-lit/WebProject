<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%@page import="java.util.*, java.net.*"
		import="ch04.MUtil"
		session="true"
		buffer="8kb" 
		autoFlush="true"
		isThreadSafe="true"%>
<%
	request.setCharacterEncoding("EUC-KR");
	Date d = new Date();
%>
Date&Time: <%=d.toLocaleString()%><br>
¼¼¼ÇID : <%=session.getId()%>