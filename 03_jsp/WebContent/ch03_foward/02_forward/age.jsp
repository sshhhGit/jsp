<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>age.jsp</title>
</head>
<body>
<h2>age.jsp</h2>

<%
int age=Integer.parseInt(request.getParameter("age"));

if(age>=0 && age<=10){
%>
<jsp:forward page="aa.jsp"></jsp:forward>
<% 	
}else if (age>10 && age<=20){
%>
<jsp:forward page="bb.jsp"></jsp:forward>
<%
}else if(age>20 && age<=70){
%>
<jsp:forward page="cc.jsp"></jsp:forward>
<%
} else if(age>70){
%>
<jsp:forward page="dd.jsp"></jsp:forward>
<%
}
%>
</body>
</html>