<!-- script.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<!-- ����(Declaration) --> //���� ��� �ȵ�
<%!
		String declaration = "Declaration";
		
		public String decMethod(){
			return declaration;
		}
%>
<!-- ��ũ��Ʈ��(Scriptlet) --> //���� �޼ҵ� �ȿ� ǥ��Ǵ� ���� (�Ϲ� �޼ҵ� ���� �Ұ���)
<%
		String scriptlet = "Scriptlet";
		String comment = "Comment";
		
		out.println("���尴ü�� �̿��� ��� : " + declaration +"<p>");
%>
<!-- ǥ����(Expression) -->

������ ���1 : <%=declaration %><p>
������ ���2 : <%=decMethod() %><p>
��ũ��Ʈ���� ���1 : <%=scriptlet %><p>



<%
	//�����ּ�
	/*������ �ּ�(�κ��ּ�)*/
	String s /*�κм���*/="";
%>
