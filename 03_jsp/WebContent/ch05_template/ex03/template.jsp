<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- template.jsp --%>

<%
String pageFile = request.getParameter("page");
if(pageFile == null){
	pageFile = "newItem.jsp";
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table width="90%" height="90%" valign="top" border="1" cellpadding="5">
 
  <tr>
   <td colspan="2" height="10%" align="right">
    <jsp:include page="top.jsp" flush="false"></jsp:include>
   </td>
  </tr>
  
  <tr>
   <td width="10%" valign="top" align="right">
    <jsp:include page="left.jsp" flush="false"></jsp:include>
   </td>
   
   <td align="center">
    <jsp:include page="<%=pageFile %>" flush="false"></jsp:include>
   </td>
  </tr>
  
  <tr>
   <td colspan="2" height="7%">
    <jsp:include page="bottom.jsp" flush="false"></jsp:include>
   </td>
  </tr>
  
 </table>
</body>
</html>