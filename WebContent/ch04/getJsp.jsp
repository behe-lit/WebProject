
<!-- getJsp.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<form method="get" action="getServlet">
msg:<input name="msg"><!-- input�� �⺻Ÿ���� text -->
<input type="submit" value="����">
</form>