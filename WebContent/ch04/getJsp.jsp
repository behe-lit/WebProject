
<!-- getJsp.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<form method="get" action="getServlet">
msg:<input name="msg"><!-- input의 기본타입은 text -->
<input type="submit" value="전송">
</form>