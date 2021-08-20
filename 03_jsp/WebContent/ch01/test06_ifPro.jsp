<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test06_ifPro.jsp</title>
</head>
<body>
<%!
String msg="";
%>

<%
request.setCharacterEncoding("UTF-8"); //post요청시 한글처리

//클라이언트가 보내준 자료받기
String name = request.getParameter("name");
String color = request.getParameter("color");

if(color.equals("blue")){
	msg = "파랑";
} else if(color.equals("yellow")){
	msg = "노랑";
} else if(color.equals("cyan")){
	msg = "하늘";
} else if(color.equals("red")){
	msg = "빨강";
} else if(color.equals("pink")){
	msg = "분홍";
} else {
	color = "white";
	msg = "기타";
}
%>

<%=name %>님이 좋아하는 색상은 <%=color+"("+msg+")" %>
</body>
</html>