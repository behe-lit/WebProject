<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="ch04.gugudan"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>



<%
	int[] two = new int[9];
	int[] three = new int[9];
	int[] four = new int[9];
	int[] five = new int[9];
	int[] six = new int[9];
	int[] seven = new int[9];
	int[] eight = new int[9];
	int[] nine = new int[9];

	int a=0;
	int n=2;
%>

<!doctype HTML>
<HTML>
<head>
<title>구구단</title>
<style>
th {
background-color: blue;
color: white;
}
</style>

</head>
<body>
<div align="center">
	<table border="1">
	<h1>Multiplication Table</h1>
		<tr>
			<th>2단</th>
			<th>3단</th>
			<th>4단</th>
			<th>5단</th>
			<th>6단</th>
			<th>7단</th>
			<th>8단</th>
			<th>9단</th>
		</tr>
		<%		
				for (int i = 0; i < 9; i++) {
					a++;
		%>

		<tr align="center">
			<td><% gugudan.gugudan(2,two,i);%><%= "2 X " + a + " = " + two[i] %></td>
			<td><% gugudan.gugudan(3,three,i);%><%= "3 X " + a + " = " + three[i] %></td>
			<td><% gugudan.gugudan(4,four,i);%><%= "4 X " + a + " = " + four[i] %></td>
			<td><% gugudan.gugudan(5,five,i);%><%= "5 X " + a + " = " + five[i] %></td>
			<td><% gugudan.gugudan(6,six,i);%><%= "6 X " + a + " = " + six[i] %></td>
			<td><% gugudan.gugudan(7,seven,i);%><%= "7 X " + a + " = " + seven[i] %></td>
			<td><% gugudan.gugudan(8,eight,i);%><%= "8 X " + a + " = " + eight[i] %></td>
			<td><% gugudan.gugudan(9,nine,i);%><%= "9 X " + a + " = " + nine[i] %></td>
		</tr>	
		<%
			}
		%>
			

	</table>
</div>
</body>
</html>