<%@ page contentType="text/html; charset=UTF-8"
    %>
<%
	request.setCharacterEncoding("UTF-8");
	String name="Greenteck";
	String bloodType = request.getParameter("bloodType");
%>

<jsp:forward page='<%=bloodType +".jsp" %>'>
	<jsp:param value="<%=name %>" name="name"/>
</jsp:forward>