<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test09_err.jsp</title>
</head>
<body>
<%
//에러 메시지 출력
String msg = exception.getMessage(); //에러 메시지
String obj = exception.toString();   //에러 실체의 클래스명과 메시지

%>
에러 메시지 : <%= msg %><br>
에러 실체의 클래스명과 메시지 : <%= obj %><br>
</body>
</html>