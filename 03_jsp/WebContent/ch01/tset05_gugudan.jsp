<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 
 <%
 out.println("<table border=1");
 for(int i=2; i<10; i++){
	 out.println("<tr>");
	 for(int j=1; j<10; j++){
	 %>	 

	 <td>
 		<%= +i+" * "+j+" = "+(i*j) %>
 	 </td>
 	 
 
 <%
 	}
	 out.println("</tr>");
 }
 out.println("</table>");
 %>
</body>
</html>