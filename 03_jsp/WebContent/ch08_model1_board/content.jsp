<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%-- content.jsp --%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h2{text-align: center;}
	table {margin: auto;}
</style>
</head>
<body>
 <h2>글 내용 보기</h2>
 
 <%
 String num = request.getParameter("num");
 int readcount = 0;
 
 Class.forName(DRIVER); //드라이버 로딩
 Connection con = DriverManager.getConnection(URL,USER,PWD); //드라이버 연결
 
 String sql = "select * from board1 where num=" + num;
 
 Statement stmt = con.createStatement(); //Statement생성
 
 ResultSet rs = stmt.executeQuery(sql);
 
 while(rs.next()){
	 String writer = rs.getString("writer");
	 String subject = rs.getString("subject");
	 String content = rs.getString("content");
	 String pw = rs.getString("pw");
	 String wdate = rs.getString("wdate");
	 
	 readcount = rs.getInt("readcount");
	 String ip = rs.getString("ip");
	 readcount++; //조회수 증가
	 %>
	 <table width="50%">
	   <tr>
	     <td align="right">
	     <a href="editForm.jsp?num=<%=num%>">글수정</a>&nbsp;
	     <a href="deletePro.jsp?num=<%=num%>">글삭제</a>&nbsp;
	     <a href="writeForm.jsp">새글쓰기</a>&nbsp;
	     <a href="list.jsp">리스트</a>&nbsp;
	     </td>
	   </tr>
	 </table>
	 
	 <table border="1" width="50%">
	 
	   <tr> 
	     <td>글쓴이</td>
	     <td><%=writer %></td>
	   </tr>
	   <tr> 
	     <td>글제목</td>
	     <td><%=subject %></td>
	   </tr>
	   <tr> 
	     <td>날짜</td>
	     <td><%=wdate %></td>
	   </tr>
	   <tr> 
	     <td>암호</td>
	     <td>
	     <%
	     if(session.getAttribute("id")=="admin"){
	    	 out.println(pw);
	     }else{
	    	 out.println("");
	     }
	     %>
	     </td>
	   </tr>
	   
	   <tr>
	     <td>조회수</td>
	     <td><%=readcount %></td>
	   </tr>
	   <tr>
	     <td>IP</td>
	     <td><%=ip %></td>
	   </tr>
	   <tr>
	     <td>글내용</td>
	     <td>
	       <pre><%=content %></pre>
	     </td>
	   </tr>
	 </table>
	 
	 
	 <%
 }//while-end
 %>
</body>
</html>