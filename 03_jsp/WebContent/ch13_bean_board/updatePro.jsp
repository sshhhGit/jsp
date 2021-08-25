<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="beandb.*"%>
<%-- updatePro.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<%--클라이언트에서 넘어온 값을 자바빈에 넣는 작업 --%>
<jsp:useBean id="dto" class="beandb.BeanDTO">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<%
BeanDAO dao = new BeanDAO();
dao.updatePro(dto);
response.sendRedirect("list.jsp");
%>
 