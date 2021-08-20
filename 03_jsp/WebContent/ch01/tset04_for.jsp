<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
java에서 전역변수 : 자동으로 초기화 O
java에서 지역변수 : 자동으로 초기화 X
※배열은 지역일지라도 자동으로 초기화

 --%>
 <%!
 String name[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Dec", "Nov"};
 %>
 
 <%
 out.println("<table border=1");
 for(int i=0; i<name.length; i++){
	 %>	 
 		<tr>
 			<td><%= i+1 %>월</td>
 			<td><%= name[i] %>월</td>
 		</tr>
 <%}
 out.println("</table>");
 %>
</body>
</html>