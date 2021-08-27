<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteForm.jsp -->
<%
request.setCharacterEncoding("UTF-8");

//content.jsp에서 보내준 값
int nowPage = Integer.parseInt(request.getParameter("page"));
int num = Integer.parseInt(request.getParameter("num"));
%>

<html>
  <head>
    <script type="text/javascript">
    	function check() {
    		if(document.delForm.pw.value==''){
    			alert("암호를 입력하세요");
    			document.delForm.pw.focus();
    			return false;
    		}
			document.delForm.submit(); //전송			
		}
    </script>
  </head>
  <body>
    <form name="delForm" method="post" action="deletePro.jsp">
      <table border="1" width="50%" align="center" cellpadding="5">
        <tr>
          <td colspan="2" align="center">
            <font size="5">글삭제</font>
          </td>
        </tr>
        <tr>
          <td>암호입력</td>
          <td><input type="password" name="pw" size="15"></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="button" value="글삭제" onclick="check()">
            <input type="reset" value="다시쓰기">
            <input type="button" value="이전으로" onclick="history.back()">
            
            <input type="hidden" name="num" value="<%=num%>">
            <input type="hidden" name="page" value="<%=nowPage%>">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>