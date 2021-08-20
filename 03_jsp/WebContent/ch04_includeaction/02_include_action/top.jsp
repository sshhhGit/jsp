<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String name = request.getParameter("name");
String addr = request.getParameter("addr");
%>

<table border="1">
	<tr>
		<td colspan="2" align="center">
		top.jsp처리 결과
		</td>
	</tr>
	<tr>
		<td>ID</td>
		<td><%=id %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=pw %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=name %></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><%=addr %></td>
	</tr>
</table>
</body>
</html>