<!--teamRead.jsp-->
<%@page import="ch07.UtilMgr"%>
<%@page import="ch07.TeamBean"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="ch07.TeamMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int num = 0;
		String url = "teamList.jsp";
		TeamBean bean = null;
		if(request.getParameter("num")==null){
			//num값이 넘어 오지 않는다.
			response.sendRedirect(url);
		}else if(!UtilMgr.isNumeric(request.getParameter("num"))){
			//num값이 숫자가 아니다.
			response.sendRedirect(url);
		}else{
			num = Integer.parseInt(request.getParameter("num"));
			bean = mgr.getTeam(num);
			
			session.setAttribute("bean", bean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team Mgr</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<h1>Team Read</h1>
<table border="1">
	<tr>
		<td>번호</td>
		<td><%=bean.getNum()%></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=bean.getName()%></td>
	</tr>
	<tr>
		<td>사는곳</td>
		<td><%=bean.getCity()%></td>
	</tr>
	<tr>
		<td>나이</td>
		<td><%=bean.getAge()%></td>
	</tr>
	<tr>
		<td>팀명</td>
		<td><%=bean.getTeam()%></td>
	</tr>
</table><p/>
<a href="teamList.jsp">LIST</a>&nbsp;&nbsp;
<a href="teamInsert.html">INSERT</a>&nbsp;&nbsp;
<a href="teamUpdate.jsp?num=<%=num%>">UPDATE</a>&nbsp;&nbsp;
<a href="teamUpdate2.jsp?num=<%=num%>">UPDATE2</a>&nbsp;&nbsp;
<a href="teamDelete.jsp?num=<%=num%>">DELETE</a>&nbsp;&nbsp;
</div>
</body>
</html>
<%}%>









