<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%

	String teams [] = {"����Ǯ","�ǽ�Ƽ","������","ÿ��","�ƽ���"};
	int wins[] = {10,8,7,7,4};
	int tie[] = {1,1,2,2,5};
	int lose[] = {0,2,2,2,2};
	int point[] = {31,25,23,23,17};
	
	
	
	
%>

<!Doctype HTML>
<html>
<head>
<link rel="stylesheet" href="../css/style.css">
<title></title>
</head>
<body>

<div align="center">
<table border="1">
<tr>
	<th>����</th>
	<th>����</th>
	<th>��</th>
	<th>��</th>
	<th>��</th>
	<th>����</th>
</tr>
<%for(int i=0; i<teams.length; i++) {%>
		
		<tr align="center">
		<td><%=i+1%></td>
		<td><%=teams[i]%></td>
		<td><%=wins[i] %></td>
		<td><%=tie[i] %></td>
		<td><%=lose[i] %></td>
		<td><%=point[i] %></td>
		</tr>
	<% }%>
</table>
</div>
</body>
</html>