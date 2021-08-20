<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test07_whilePro.jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8"); //post요청시 한글처리

//클라이언트가 보내준 데이터 받기
String msg = request.getParameter("msg");
int cnt = Integer.parseInt(request.getParameter("cnt"));

int count = 0; //지역변수
while(cnt>count) {
	out.println(msg+"<br>");
	count++;
}
%>
</body>
</html>