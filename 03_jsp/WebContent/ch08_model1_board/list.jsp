<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%-- list.jsp --%>
<%!
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/mydb";
String USER = "root";
String PWD = "12345";
%>
<%
request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<style type="text/css">
	h2{text-align: center;}
	table {margin: auto;}
</style>
</head>
<body>
 <h2>게시판 리스트</h2>
 <table width="60%">
 	<tr>
 	  <td colspan="2" align="right">
 	    <a href="writeForm.jsp">새글쓰기</a>
 	  </td>
 	</tr>
 </table>
 
 <%
 	Class.forName(DRIVER); //드리이버 로딩
 	Connection con = DriverManager.getConnection(URL,USER,PWD);
 	
 	Statement stmt = con.createStatement(); //Statement 생성
 	
 	String sql = "select * from board1 order by num desc";
 	
 	ResultSet rs = stmt.executeQuery(sql);
 %>
 <table width="60%" border="1">
	<tr>
	  <td>글번호</td>
	  <td>작성자</td>
	  <td>글제목</td>
	  <td>작성일</td>
	  <td>조회수</td>
	</tr>
	<%
	while(rs.next()){
		int num = rs.getInt("num");
		String writer = rs.getString("writer");
		String subject = rs.getString("subject");
		String wdate = rs.getString("wdate");
		int readcount = rs.getInt("readcount");
		%>
		<tr>
		 <td><%=num %></td>
		 <td><%=writer %></td>
		 
		 <%-- 글제목을 클릭하면 글내용보기로 가게한다 --%>
		 <td>
		 <a href="content.jsp?num=<%=num%>">
		 <%=subject %>
		 </a>
		 </td>
		 
		 <td><%=wdate %></td>
		 <td><%=readcount %></td>
		 <td>
		   <a href="deletePro.jsp?num=<%=num%>">글삭제</a>
		 </td>
	<%
	}//while-end
	rs.close();
	stmt.close();
	con.close();
	%> 
 </table>
</body>
</html>