<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test09_date.jsp</title>
</head>
<body>

 <font color='blue' size=5>
 오늘 날짜 출력 예제
 <%
 	java.util.Date date = new java.util.Date();
 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss a EEEE");
 %>
 
 <%= sdf.format(date) %>
 </font>
 
</body>
</html>