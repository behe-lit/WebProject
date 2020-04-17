<%@ page contentType="text/html; charset=euc-kr"
    %>
    
    
<jsp:useBean id="bean" class="ch07.SimpleBean"></jsp:useBean>    
<jsp:setProperty property="msg" name="bean"/>
<jsp:setProperty property="cnt" name="bean"/>
<jsp:setProperty property="*" name="bean"/>

msg2:<jsp:getProperty property = "msg" name="bean"/>
msg2:<%=bean.getMsg() %><br>
cnt2:<jsp:getProperty property="cnt" name="bean"/><br>
<%
	request.setCharacterEncoding("EUC-KR");
	
%>