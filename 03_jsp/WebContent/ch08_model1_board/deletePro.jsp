
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%-- deletePro.jsp --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/mydb";
String USER = "root";
String PWD = "12345";
%>
<%
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");

Class.forName(DRIVER);
Connection con = DriverManager.getConnection(URL,USER,PWD);

String sql = "delete from board1 where num=" + num;
Statement stmt = con.createStatement();

stmt.executeUpdate(sql);

stmt.close();
con.close();

response.sendRedirect("list.jsp");

%>
</body>
</html>