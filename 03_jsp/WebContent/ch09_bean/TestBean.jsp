<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="mypa.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dto" class="mypa.TestDTO">
  <jsp:setProperty name="dto" property="id" value="hong"/>
  <jsp:setProperty name="dto" property="pw" value="h123"/>
  <jsp:setProperty name="dto" property="name" value="홍길동"/>
  
  ID : <jsp:getProperty name="dto" property="id"/><br>
  PW : <jsp:getProperty name="dto" property="pw"/><br>
  NAME : <jsp:getProperty name="dto" property="name"/><br>
  
  <%
  dto.setId("park");
  dto.setPw("p123");
  dto.setName("박문수");
  %>
  <br>
  <br>
  
  ID : <%= dto.getId() %><br>
  PW : <%= dto.getPw() %><br>
  NAME : <%= dto.getName() %><br>
</jsp:useBean>
</body>
</html>