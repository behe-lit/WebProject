<%@ page contentType="text/html; charset=utf-8"
    %>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String[] hobby = request.getParameterValues("hobby");
%>

성명: <%=name%>
학생번호: <%=studentNum%>
성별:<%=gender%>
전공:<%=major%>
취미: <% 
		for(int i=0; i<hobby.length; i++) {
		
		out.println(hobby[i]+"&nbsp;");

} %>
	
