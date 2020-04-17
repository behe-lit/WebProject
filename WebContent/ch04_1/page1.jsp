<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%@page info="Copyright 2001 by JSPStudy.co.kr" %>
<%
	request.setCharacterEncoding("EUC-KR");
String[]arr = {"1","2","3"};
%>
<%=this.getServletInfo() %>
<%=arr[3] %>