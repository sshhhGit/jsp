<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    import="javax.sql.DataSource"
    import="javax.naming.*"
    %>
<%-- usePool.jsp --%>
<!-- 
	Context ct = new InitialContext();
	 - 현재환경의 naming Cotext를 획득한다
   	 - InitialContext()는 웹 어플링케이션이 처음으로 배치될 때 설정되고
   	      모든 설정된 자원은 JNDI namespace의 "java:comp/env"부분에 놓이게 된다.
   	      그래서 자원 접근은 Context ct = new InitialContext(); 로 한다
   	   	 
    Context envCt = (Context)ct.lookup("java:comp/env");
     - JNDI에 등록돼 생성 할 자원이름("java:comp/env")은 Context에 대한 상대적인 이름이다.
      
    DataSource ds = (DataSource)envCt.lookup("jdbc/mysql");
	 - context.xml, web.xml에서 설정해놓은 이름이다.
 -->
<html>
<body>
  <h2>커넥션 풀 예제</h2>
  <table border="1" width="50%">
    <tr>
      <td>이름</td>
      <td>이메일</td>
      <td>주소</td>
    </tr>
    
    <%
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    //방법1
	Context ct = new InitialContext();   	 
    Context envCt = (Context)ct.lookup("java:comp/env");
    DataSource ds = (DataSource)envCt.lookup("jdbc/mysql");
    
    //방법2
    Context ct2 = new InitialContext();
    DataSource ds2 = (DataSource)ct2.lookup("java:comp/env/jdbc/mysql");
    
    con = ds2.getConnection();    //Connection얻기
    String sql = "select * from test";
    stmt = con.createStatement(); //Statement생성
    rs = stmt.executeQuery(sql);
    
    while(rs.next()){
    	String name = rs.getString("name");
    	String email = rs.getString("email");
    	String addr = rs.getString("addr");
    	%>
    	<tr>
    	  <td><%=name %></td>
    	  <td><%=email %></td>
    	  <td><%=addr %></td>
    	</tr>
    	<%
    }//while-end
    rs.close();
    stmt.close();
    con.close();
    %>
  </table>
</body>
</html>