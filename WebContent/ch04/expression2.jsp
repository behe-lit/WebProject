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
이름 : <INPUT NAME="name"><p>
좋아하는 색깔 : <SELECT NAME="color">
        <option value="blue" selected>파란색</option>
        <option value="red">붉은색</option>
        <option value="orange">오렌지색</option>
        <option value="etc">기타</option>
</SELECT><p>
<INPUT TYPE="submit" VALUE="보내기">
</FORM>
</body>
</html>