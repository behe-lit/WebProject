<%@ page contentType="text/html; charset=EUC-KR"
    %>
    
    
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="bean" scope="session" class="ch07.TeamBean"/>
<%=bean.getNum()%><br>
<%=bean.getName()%><br>