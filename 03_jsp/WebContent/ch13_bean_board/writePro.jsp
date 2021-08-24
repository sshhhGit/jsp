<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="beandb.BeanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--writePro.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="beandb.BeanDTO">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<%
BeanDAO dao = new BeanDAO();
dao.insertDB(dto);

response.sendRedirect("list.jsp");
%>