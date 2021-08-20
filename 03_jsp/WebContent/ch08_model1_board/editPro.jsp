<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%-- editPro.jsp --%>
<%!
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/mydb";
String USER = "root";
String PWD = "12345";
%>
<%
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");

Class.forName(DRIVER); //드라이버 로딩
Connection con = DriverManager.getConnection(URL,USER,PWD); //드라이버 연결

String sql = "select * from board1 where num=" + num;

Statement stmt = con.createStatement(); //Statement생성
ResultSet rs = stmt.executeQuery(sql); //쿼리 수향
PreparedStatement pstmt = null;

if(!(rs.next())){
	out.println("해당 자료가 없습니다");
}else{ // 수정이 가능 할 때
	String dbpw = rs.getString("pw");
	if(dbpw.equals(request.getParameter("pw"))){
		//암호가 일치할경우
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		sql = "update board1 set writer=?,subject=?,content=? where num=" + num;
		pstmt = con.prepareStatement(sql);
		//?값 채우기
		pstmt.setString(1, writer);
		pstmt.setString(2, subject);
		pstmt.setString(3, content);
		pstmt.executeUpdate(); 
		
		rs.close();
		stmt.close();
		pstmt.close();
		con.close();
		
		response.sendRedirect("list.jsp");
	}else{
		//암호가 일지하지않을경우
		%>
		<script>
		alert("암호가 일치하지않습니다");
		history.back();
		</script>
		<%
	}//else-end
}//else-end
%>

