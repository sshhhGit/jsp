<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"%>
<%-- writePro.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="dto" class="boardre.BoardDTO">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<%--
  ip를 구하여 dto에 setter 작업을 해주어야 한다.
--%>

<%
String ip = request.getRemoteAddr(); //ip 구하기
dto.setIp(ip);

BoardDAO dao = new BoardDAO();
dao.insertDAO(dto); //dao메서드 호출, dto를 넘긴다

response.sendRedirect("list.jsp");
%>