<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<jsp:useBean id="s1" class="java.lang.String"/>
<jsp:declaration>
	public int max(int a, int b) {
		return a>b?a:b;
	}
</jsp:declaration>
<jsp:scriptlet>
	int a=22;
	int b=23;
</jsp:scriptlet>
a=<jsp:expression>a</jsp:expression>��
b=<jsp:expression>b</jsp:expression>�߿� �� ū ��
<jsp:expression>max(a,b)</jsp:expression>