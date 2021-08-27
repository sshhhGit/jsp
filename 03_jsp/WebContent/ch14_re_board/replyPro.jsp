<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"%>
<%-- replyPro.jsp --%>

<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="dto" class="boardre.BoardDTO">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<%
int nowPage = Integer.parseInt(request.getParameter("page"));
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO dao = new BoardDAO();
BoardDTO dto2 = dao.getBoard(num);

int pos = dto2.getPos();
int depth = dto2.getDepth();

dto.setPos(pos);		//setter
dto.setDepth(depth);	//setter

dao.replyPos(dto);		//답글 위치 확보
dao.replyBoard(dto);	//답글쓰기

response.sendRedirect("list.jsp?page="+nowPage);
%>