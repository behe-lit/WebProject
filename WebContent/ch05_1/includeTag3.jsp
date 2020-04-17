<%@ page contentType="text/html; charset=UTF-8"
    %>
<%
	request.setCharacterEncoding("UTF-8");
	String name="강호동";
	String bloodType = request.getParameter("bloodType");
%>
<!--  -->
<jsp:include page='<%=bloodType+".jsp" %>'>
	<jsp:param value="<%=name%>" name="name"/>
</jsp:include>