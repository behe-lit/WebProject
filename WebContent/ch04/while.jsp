<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="ch04.MUtil" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String msg = request.getParameter("msg");
	
	//int number = Integer.parseInt(request.getParameter("number"));
	int number = MUtil.parseInt(request,"number");
	int cnt =0;
	while(number>cnt) {
%>
	<font color="<%=MUtil.randomColor()%>">
		<b><%=msg%></b>
	</font><br>
<% 
	cnt++;		
	}
%>
