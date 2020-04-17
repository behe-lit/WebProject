<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="ch07.TeamBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mgr" class="ch07.TeamMgr"></jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");
	Vector<TeamBean> list = mgr.listTeam2();
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
		<p />
		<h1>Team List</h1>

		<table>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>사는곳</th>
				<th>나이</th>
				<th>팀명</th>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					TeamBean bean = list.get(i);
					int num = bean.getNum();
			%>
			<tr align="center">
				<td><a href="teamRead.jsp?num=<%=num%>"><%=num%></a></td>
				<td><%=bean.getName()%></td>
				<td><%=bean.getCity()%></td>
				<td><%=bean.getAge()%></td>
				<td><%=bean.getTeam()%></td>
			</tr>

			<%
				}
			%>
		</table>
		<p>
			<a href="teamInsert.html">INSERT</a>
	</div>
</body>