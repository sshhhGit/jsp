<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bloodType.jsp</title>
</head>
<body>
<h2>bloodType.jsp</h2>
<%
String name="수퍼맨";
String bloodType = request.getParameter("bloodType");

bloodType = bloodType+".jsp"; //A.jsp
%>

<jsp:forward page="<%=bloodType %>">
 <jsp:param value="<%=name %>" name="name"/>
</jsp:forward>
</body>
</html>