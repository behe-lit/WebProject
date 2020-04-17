<!-- includeTagTop1.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
%>
include Action Tag의 Top입니다.<p>
<b><%=name%></b> 파이팅!!!
<hr>