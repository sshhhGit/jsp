<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="test09_err.jsp" %>
<%--
이 페이지 에서 에러가 발생하면
 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int a=7;
int b=0;
%>
합  : <%= a+b%><br>
차  : <%= a-b%><br>
곱  : <%= a*b%><br>z
몫  : <%= a/b%><br>


</body>
</html>