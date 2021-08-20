<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="10kb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test01_out.jsp</title>
</head>
<body>
<%
int total = out.getBufferSize(); //전체 버퍼 사이즈를 구한다
int rate  = out.getBufferSize(); //남아있는 버퍼사이즈를 구한다
%>

전체 버퍼 사이즈 : <%= total %><br>
남아 있는 버퍼 사이즈 : <%= rate %><br>
사용중인 버퍼 사이즈 : <%= total-rate %><br>


</body>
</html>