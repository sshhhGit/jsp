<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%-- writePro.jsp --%>
<%!
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/mydb";
String USER = "root";
String PWD = "12345";
%>
<%
request.setCharacterEncoding("UTF-8");

//클라이언트가 보낸 데이터 받기
String writer = request.getParameter("writer");
String subject = request.getParameter("subject");
String content = request.getParameter("content");
String pw = request.getParameter("pw");

String ip = request.getRemoteAddr(); //ip 구하기

try{
	Class.forName(DRIVER); //드리이버 로딩
	System.out.println("드라이버 로딩 성공");
	
	Connection con = DriverManager.getConnection(URL,USER,PWD);
	String sql = "insert into board1(writer,subject,content,pw,wdate,ip)";
	sql = sql + " values(?,?,?,?,NOW(),?)";
	PreparedStatement pstmt = con.prepareStatement(sql); //생성시 인자 삽입

	//? 값 채우기
	pstmt.setString(1, writer);
	pstmt.setString(2, subject);
	pstmt.setString(3, content);
	pstmt.setString(4, pw);
	pstmt.setString(5, ip);
	
	pstmt.executeUpdate(); //쿼리 수행
	
	pstmt.close();
	con.close();
	
	response.sendRedirect("list.jsp");
}catch(Exception ex){
	System.out.println("SQL 예외 : " + ex);
}
%>