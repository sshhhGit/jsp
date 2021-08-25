<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="beandb.*"%>
<%-- list.jsp --%>
<%
BeanDAO dao = new BeanDAO();
Vector <BeanDTO> vec = dao.getList();
%>
<table border="1" align="center" width="50%">
  <tr>
    <td colspan="5" align="center">
      <a href="writeForm.jsp">글쓰기</a>
    </td>
  </tr>
</table>

<table border="1" align="center" width="50%">
  <tr>
    <td colspan="5" align="center">
      <font size="5">[리스트]</font>
    </td>
  </tr>
  
  <tr>
    <td>아이디</td>
    <td>이름</td>
    <td>이메일</td>
    <td>전화번호</td>
    <td>기타</td>
  </tr>
  
  <%
  for(int i=0; i<vec.size(); i++){
	  BeanDTO dto = (BeanDTO)vec.get(i);
	  %>
	<tr>
    <td><%=dto.getId() %></td>
    <td>
    <%-- 이름을 클릭하면 글내용 보기로 가기 --%>
      <a href="content.jsp?id=<%=dto.getId() %>">
    <%=dto.getName() %></a></td>
    <td><%=dto.getEmail() %></td>
    <td><%=dto.getTel() %></td>
    <td>
    <a href="deletePro.jsp?id=<%=dto.getId() %>">
    	삭제</a></td>
  </tr>  
	  <%
  }
  %>
  </table>