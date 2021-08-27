<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"%>
<%-- deletePro.jsp --%>
<%
//deleteForm.jsp에서 넘겨준 데이터 받기
int num = Integer.parseInt(request.getParameter("num"));
int nowPage = Integer.parseInt(request.getParameter("page"));

String inPw = request.getParameter("pw");
String dbPw = "";

BoardDAO dao = new BoardDAO();
BoardDTO dto = dao.getBoard(num); //dao 메서드 호출 dto를 받는다
dbPw = dto.getPw();

if(inPw.equals(dbPw)){
	//암호가 일치하면, 글삭제
	dao.deleteBoard(num);
	response.sendRedirect("list.jsp?page="+nowPage);
}else{ //암호가 틀리면
	%>
	 <script>
	   alert("암호가 다릅니다")
	   history.back();
	 </script>
	<%
}//else-end
%>
