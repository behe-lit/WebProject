<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%!
	public int max(int a, int b) {
		return (a>b)?a:b;
}
%>

<%
	Date d = new Date();
%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"/>
</head>
<h1>If-else Example</h1>
<FORM METHOD="get" ACTION="if.jsp">
�̸� : <INPUT NAME="name"><p>
�����ϴ� ���� : <SELECT NAME="color">
        <option value="blue" selected>�Ķ���</option>
        <option value="red">������</option>
        <option value="orange">��������</option>
        <option value="etc">��Ÿ</option>
</SELECT><p>
<INPUT TYPE="submit" VALUE="������">
</FORM>
</body>
</html>