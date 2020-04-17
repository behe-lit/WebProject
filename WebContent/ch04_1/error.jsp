<%@ page contentType="text/html; charset=EUC-KR"
		isErrorPage="true"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
	//Exception 객체가 내부적으로 제공: isErrorPage="true"
	String msg = exception.getMessage();
	//request 저장 공간에 site이름으로 jspstudy값을 저장
	request.setAttribute("site","jspstudy");
%>

<%=msg%>