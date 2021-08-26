<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"
    %>
<%-- content.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
//list.jsp에서 보내준 값을 받기
int num = Integer.parseInt(request.getParameter("num"));
int nowPage = Integer.parseInt(request.getParameter("page"));
String keyWord = request.getParameter("keyWord");
String keyField = request.getParameter("keyField");

BoardDAO dao = new BoardDAO();
BoardDTO dto = dao.getBoard(num); //dao메서드 호출, dto를 받는다.
dao.upCount(num); //dao 메서드 호출, 조회수 증가

//dto에 있는 값을 꺼내기
String name = dto.getName();
String subject = dto.getSubject();
String regdate = dto.getRegdate();
String content = dto.getContent();

String ip = dto.getIp();
int count = dto.getCount();
%>

<html>
  <head>
    <script type="text/javascript">
      function list() {
    	  document.listForm.action="list.jsp";
    	  document.listForm.submit(); //전송
	}
    </script>
    <style type="text/css">
    h2 {
	text-align: center;
	}
	table {
	margin: auto;
	width: 70%;
	}
    </style>
  </head>
  <body>
    <table border="1" bgcolor="ivory">
      <tr>
        <td bgcolor="#9ca2ee" height="25" align="center">
          <font size="5">^.^ 글 내용보기 ^.^</font>
        </td>
      </tr>
      <tr>
        <td>
          <table border="1" width="100%" cellpadding="0" cellspacing="0">
            <tr height="30">
              <td>글쓴이</td>
              <td><%=name %></td>
              <td>날짜</td>
              <td><%=regdate %></td>
            </tr>
            <tr height="30">
              <td>글제목</td>
              <td colspan="3"><%=subject %></td>
            </tr>
            <%--글내용 --%>
            <tr height="30">
              <td colspan="4">
                <%
                content = content.replace("\n", "<br>");
                %>
                <%=content %>
              </td>
            </tr>
            <tr height="30">
              <td colspan="4" align="right">
                <%=ip %>로부터 글을 남기셨습니다./조회수 : <%=count %>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td colspan="4" align="center">
        [<a href="javaScript:list()">리스트</a>]
        [<a href="updateForm.jsp?page=<%=nowPage%>%num=<%=num%>">글수정</a>]
        [<a href="replyForm.jsp?page=<%=nowPage%>%num=<%=num%>">답글</a>]
        [<a href="deleteForm.jsp?page=<%=nowPage%>%num=<%=num%>">글삭제</a>]
        [<a href="writeForm.jsp">새글</a>]
        </td>
      </tr>
    </table>
    <%
    if(keyWord == null || keyWord.equals("")){
    	//전체리스트
    	%>
    	<form name="listForm" method="post" action="">
    	  <input type="hidden" name="num" value="<%=num%>">
    	  <input type="hidden" name="page" value="<%=nowPage%>">
    	</form>
    	<%
    }else{
    	//검색리스트
    	%>
    	<form name="listForm" method="post" action="">
    	  <input type="hidden" name="num" value="<%=num%>">
    	  <input type="hidden" name="page" value="<%=nowPage%>">
    	  <input type="hidden" name="keyField" value="<%=keyField%>">
    	  <input type="hidden" name="keyWord" value="<%=keyWord%>">
    	</form>
    	<%
    }
    %>
  </body>
</html>
