<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"%>
<%-- updatePro.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<%-- 객체를 생성하고 dto에 값을 넣는다--%>
<jsp:useBean id="dto" class="boardre.BoardDTO">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>
<%
int nowPage = Integer.parseInt(request.getParameter("page"));
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO dao = new BoardDAO();

BoardDTO dto2 = dao.getBoard(num); //dao메서드 호출, dto를 받는다
//암호 비교
String inPw = request.getParameter("pw");
String dbPw = dto2.getPw();

if(inPw.equals(dbPw)){
	//암호 일치 - 글 수정
	dao.updateBoard(dto); //dao메서드 호출, dto를 넘겨준다, DB글 수정한다
	response.sendRedirect("list.jsp?page="+nowPage);
}else{
	//암호 불일치 
	%>
	<script>
	  alert("암호가 일치하지않습니다");
	  history.back();
	</script>
	<%
}//else-end
 %>