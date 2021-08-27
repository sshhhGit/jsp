<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"%>
<%-- replyForm.jsp --%>
<%
request.setCharacterEncoding("UTF-8");

//content.jsp에서 보내준 값
int num = Integer.parseInt(request.getParameter("num"));
int nowPage = Integer.parseInt(request.getParameter("page"));

BoardDAO dao = new BoardDAO();
BoardDTO dto = dao.getBoard(num);

String subject = dto.getSubject();
String content = dto.getContent();
%>
<html>
  <head>
    <script type="text/javascript">
    	function check() {
    		if(document.reForm.pw.value==''){
    			alert("암호를 입력하세요");
    			document.reForm.pw.focus();
    			return false;
    		}
			document.reForm.submit(); //전송			
		}
    </script>
    <style type="text/css">
    h2 {
	text-align: center;
}	table {
	margin: auto;
	width: 50%;
}
    </style>
  </head>
  <body>
    <h2>답글쓰기</h2>
    <form name="reForm" method="post" action="replyPro.jsp">
      <table border="1" cellpadding="5">
        <tr>
          <td>이름</td>
          <td><input type="text" name="name" size="30"></td>
        </tr>
        <tr>
          <td>글제목</td>
          <td><input type="text" name="subject" size="40" value="답글:<%=subject%>"></td>
        </tr>
        <tr>
          <td>글내용</td>
          <td>
          <textarea name="content" rows="10" cols="50"><%=content %></textarea>
          </td>
        </tr>
        
        <tr>
          <td>암호</td>
          <td>
            <input type="password" name="pw" size="15">
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="button" value="답글쓰기" onclick="check()">
            <input type="reset">
            <input type="button" value="이전으로" onabort="history.back()">
            
            <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
            <input type="hidden" name="num" value="<%=num%>">
            <input type="hidden" name="page" value="<%=nowPage%>">
          </td>
        </tr>
      </table>
    </form>
  </body>  
  </html>