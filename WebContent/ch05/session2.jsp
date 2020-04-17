<%@ page contentType="text/html; charset=UTF-8"
    %>
<%
	request.setCharacterEncoding("UTF-8");
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	
	String id = (String)session.getAttribute("idKey");
	String sessionID = session.getId();
	int intelvalTime = session.getMaxInactiveInterval();
	if(id !=null) {
%>
<%= id%>당신이 좋아하는 계절과 과일은
<%=season %>과 <%=fruit %>입니다.<br>
세션ID : <%=sessionID %><br>
<%		
	session.removeAttribute("idKey");
	session.invalidate();

	} else {
		out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할 수가 없습니다.");
		out.println("<a href='session1.html'>로그인</a>");
	}
%>

