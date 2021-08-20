<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- template.jsp --%>

<%
//pageController.jsp에서 보내준 값 받기
String control = request.getParameter("control");
String contentPage = request.getParameter("contentPage");
String pageTitle = request.getParameter("pageTitle");

String left = control+"left.jsp"; //dcleft.jsp

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>MyHome</h2>
 <h3><%=pageTitle %></h3>
 <table width="90%" height="90%" align="center" border="1" cellpadding="5">
  <tr>
   <td colspan="2" height="10%" align="right">
    <jsp:include page="top.jsp" flush="false"></jsp:include>
   </td>
  </tr>
  
  <tr>
   <td width="10%" valign="top">
    <jsp:include page="<%=left %>"></jsp:include>
   </td>
   
   <td width="80%" height="80%" valign="top">
    <jsp:include page="<%=contentPage %>" flush="false"></jsp:include>
   </td>
  </tr>
  
  <tr>
   <td colspan="2" align="center" height="10%">
    <jsp:include page="bottom.jsp" flush="false"></jsp:include>
   </td>
  </tr>
  
 </table>
</body>
</html>