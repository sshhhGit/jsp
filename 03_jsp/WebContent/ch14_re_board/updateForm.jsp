<%@page import="boardre.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--updateForm.jsp 
page : <%=request.getParameter("page") %><br>
num : <%=request.getParameter("num") %><br>
--%>
<%
request.setCharacterEncoding("UTF-8");

BoardDAO dao = new BoardDAO();
int nowPage = Integer.parseInt(request.getParameter("page"));
int num = Integer.parseInt(request.getParameter("num"));

BoardDTO dto = dao.getBoard(num);

//dto 내용 꺼내기
String name = dto.getName();
String subject = dto.getSubject();
String content = dto.getContent();
%>
<html>
  <head>
  <script type="text/javascript">
    function check() {
    	if(document.updateForm.pw.value==''){
    		alert("암호를 입력하세요");
    		document.updateForm.pw.focus();
    		return false;
    	}//if()-end
    	document.updateForm.submit(); //전송
	}
  </script>
  <style type="text/css">
  h2 {
	text-align: center;
}table {
	margin: auto;
	width: 70%;
}
  </style>
  </head>
  <body>
    <h2>글수정 폼</h2>
      <form name="updateForm" method="post" action="updatePro.jsp">
        <table border="1" cellpadding="7" cellspacing="0">
          <tr>
            <td>글쓴이</td>
            <td><input type="text" name="name" size="30" value="<%=name%>"></td>
          </tr>
          <tr>
            <td>글제목</td>
            <td><input type="text" name="subject" size="40" value="<%=subject%>"></td>
          </tr>
          <tr>
            <td>글내용</td>
            <td>
            <textarea name="content" rows="10" cols="50" ><%=content %></textarea>
            </td>
          </tr>
          <tr>
            <td>암호</td>
            <td>
            <input type="password" name="pw" size="15">
            <font color="red">*수정하려면 암호는 필수입니다.</font>
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
              <input type="button" value="글수정" onClick="check()">
              <input type="reset" value="취소">
              <input type="button" value="이전" onclick="history.back()">
              
              <input type="hidden" name="num" value="<%=num%>">
              <input type="hidden" name="page" value="<%=nowPage%>">
            </td>
          </tr>
        </table>
      </form>
  </body>
</html>