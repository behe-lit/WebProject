<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = (String)session.getAttribute("idKey");
%>
<h1>로그인</h1>
<%
	if(id != null) {
%> } 

<%=id%> 반갑습니다.<a href="logout.jsp">로그아웃</a>
else {
<% 
}
%>

<form method="post" action="loginServlet">
id:<input name="id"><br>
pwd:<input name="pwd"><br>
<input type="submit" value="로그인">
</form>
