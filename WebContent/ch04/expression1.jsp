<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page contentType="text/html; charset=UTF-8"
    %>
<%!
	String[] subject= {"Java","JSP","Android","Spring"};
	int i=1;
%>

<!doctype HTML>
<HTML>
<head>
<title></title>
<body>
<table border="1">
	<tr>
	<th>번호</th>
	<th>과목</th>
	</tr>	
	<%
	for(String name:subject) {
	%>
	<tr>
		<td><%= i++%></td>
		<td><%= name%></td>
	</tr>
	<% 
	}
	%>
	
</table>
<hr>
<table border="1">
	<tr>
		<th>번호</th>
		<th>과목</th>
	</tr>
	<%
		for(int i=0; i<subject.length; i++) {
			out.println("<tr>");
			out.println("<td>"+(i+0)+"</td>");
			out.println("<td>"+subject[i]+"</td>");
			out.println("<tr>");
		}
	%>
</table>
</body>

</head>


</HTML>