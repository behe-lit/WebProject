<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = (String)session.getAttribute("idKey");
%>
<h1>�α���</h1>
<%
	if(id != null) {
%> } 

<%=id%> �ݰ����ϴ�.<a href="logout.jsp">�α׾ƿ�</a>
else {
<% 
}
%>

<form method="post" action="loginServlet">
id:<input name="id"><br>
pwd:<input name="pwd"><br>
<input type="submit" value="�α���">
</form>
