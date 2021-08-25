<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="beandb.*"%>
<%--content.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id"); //list.jsp에서 넘겨준 id를 받는다.

BeanDAO dao = new BeanDAO();
BeanDTO dto = dao.getContent(id); //dao메서드 호출하여 dto 결과를 받는다
%>

<%-- 글 내용보기와 글 수정 --%>
<html>
  <body>
    <table width="50%" align="center">
      <tr>
        <td align="right">
          <a href="list.jsp">리스트</a>
        </td>
      </tr>
    </table>
    
    <form method="post" action="updatePro.jsp">
      <table border="1" width="50%" align="center">
        <tr>
          <td>ID</td>
          <td>
          <%=dto.getId()%>
          <input type="hidden" name="id" value="<%=dto.getId()%>">
          <%--
          readonly는 읽기 가능, 서버로 값을 넘겨주는것은 된다
          disabled은 수정을 못하지만 서버로 넘어가지 않는다
           
          <input type="text" name="id" size="20" value="<%=dto.getId()%>" readonly>
          --%>
          </td>
        </tr>
        <tr>
          <td>이름</td>
          <td><input type="text" name="name" size="30" value="<%=dto.getName()%>"></td>
        </tr>
        <tr>
          <td>이메일</td>
          <td><input type="text" name="email" size="30" value="<%=dto.getEmail()%>"></td>
        </tr>
        <tr>
          <td>전화번호</td>
          <td><input type="text" name="tel" size="14" value="<%=dto.getTel() %>"></td>
        </tr>
        <tr>
          <td>글내용</td>
          <td>
          <textarea rows="10" cols="50" name="content"><%=dto.getContent() %></textarea>
		  </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" value="글수정">
            <input type="reset" value="취소">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
