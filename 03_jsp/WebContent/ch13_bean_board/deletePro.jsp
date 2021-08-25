<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="beandb.*"%>

<%-- deletePro.jsp --%>
<%
String id = request.getParameter("id");
BeanDAO dao = new BeanDAO();
dao.deletePro(id);
response.sendRedirect("list.jsp");
%>