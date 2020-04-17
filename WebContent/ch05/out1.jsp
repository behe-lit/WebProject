<%@ page contentType="text/html; charset=UTF-8"
    %>
<%
	request.setCharacterEncoding("UTF-8");
	int totalBuffer = out.getBufferSize();
	int remainBuffer = out.getRemaining();
	int useBuffer = totalBuffer - remainBuffer;
	out.print("출력 버퍼의 전체 크기 : "+totalBuffer+"<br>");
	out.println("남은 버퍼의 전체 크기 : "+remainBuffer+"<br>");
	out.println("현재 버퍼 사용량 : "+useBuffer+"<br>");
%>