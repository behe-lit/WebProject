<%@ page contentType="text/html; charset=EUC-KR"
		isErrorPage="true"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
	//Exception ��ü�� ���������� ����: isErrorPage="true"
	String msg = exception.getMessage();
	//request ���� ������ site�̸����� jspstudy���� ����
	request.setAttribute("site","jspstudy");
%>

<%=msg%>