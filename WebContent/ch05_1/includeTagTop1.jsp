<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
%>

include Action Tag의 TOP입니다.<p>
<b><%= name %></b> Fight
<hr>