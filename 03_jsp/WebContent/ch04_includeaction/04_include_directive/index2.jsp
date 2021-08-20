<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index2.jsp</title>
</head>
<body bgcolor="#996600">
<%@ include file="top.jsp" %>
<table width="70%" height="90%" align="center" bgcolor="ivory">
<%
if(id != null){ //로그인 상태면
	%>
	<tr>
	 <td align="center">
	 <%=id %>님 방문해주셔셔 감사합니다.
	 </td>
	</tr>
	<%
} else { //로그인 상태가 아니면 
	%>
	<tr>
	 <td align="center">
	 	로그인한 후 에 방문해주세요
	 </td>
	</tr>
	<% 
}
%>
</table>


<%@ include file="bottom.jsp" %>
</body>
</html>