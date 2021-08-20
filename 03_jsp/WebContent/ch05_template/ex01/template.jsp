<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- template.jsp --%>
<%
String contentPage = request.getParameter("contentPage");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>template.jsp</title>
</head>
<body>

<table border="1" width="90%" height="90%" align="center">
 <tr>
  <td colspan="2" align="right">
   <jsp:include page="top.jsp" flush="false"></jsp:include>
   <%-- flush="flash" 는 출력 버퍼를 비우지 않도록 한다 --%>
  </td>
 </tr>
 <tr>
 <!-- 왼쪽배치 -->
  <td width="10%" valign="top">
   <jsp:include page="left.jsp" flush="false"></jsp:include>
  </td>
 <!-- 중앙배치 -->
  <td width="90%" valign="top" align="center" bgcolor="ivory">
   <jsp:include page="<%=contentPage %>" flush="false"></jsp:include>
  </td>
 </tr>
 <tr>
  <td colspan="2" width="90%" valign="top" align="center">
   <jsp:include page="bottom.jsp" flush="false"></jsp:include>
  </td>
 </tr>
</table>
</body>
</html>