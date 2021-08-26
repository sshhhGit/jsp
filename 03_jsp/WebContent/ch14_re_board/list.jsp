<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"
    import="java.utli.*"%>
<%-- list.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<%
int nowPage = 0;				//현재 페이지
int nowBlock = 0;				//현재 블럭

int totalRecord = 0;			//전체 글 갯수
int numPerPage = 0;				//페이지 당 글 갯수(1페이지당 10갤)

int totalPage = 0;				//전체 페이지 갯수
int totalBlock = 0; 			//전체 블럭 갯수

int pagePerBlock = 0;			//블럭 당 페이지 갯수

int beginPage = 0;				//시작페이지 1~10, 11~20, 21~30

numPerPage = 10;				//페이지당 글 갯수(1페이지당 10개)
pagePerBlock = 10;				//블럭당 페이지 수(10개씩)
String keyWord = "";			//검색어
String keyField = "";			//필드
Vector <BoardDTO> vec = null; 	

String im = request.getParameter("keyWord"); //검색어를 받아서 im에 할당

//검색어가 있는지 없는지 체크
if(request.getParameter("keyWord") != null){
	keyWord = request.getParameter("keyWord");
	keyField = request.getParameter("keyField");
}

//리스트보기 reload
if(request.getParameter("reroad") != null){
	if(request.getParameter("reload").equals("true")){
		keyField = "";
		keyWord = "";
	}
}

BoardDAO dao = new BoardDAO(); //객체생성
vec = dao.getList(keyField, keyWord); //dao메서드 호출 결과를 받아서 vec에 저장

totalRecord = vec.size(); //총 글 갯수

if(request.getParameter("page") != null){ //넘겨받은 페이직 ㅏ있으면
	nowPage = Integer.parseInt(request.getParameter("page"));
}

beginPage = nowPage*numPerPage; //페이지의 시작행
//			0*10=0(0~9)			페이이지의 시작 행 값 ~ 페이지의 끝의 행 값
//			1*10=10(10~19)
//			2*10=20(20~29)
//			3*10=30(30~39)
//			4*10=40(40~49)
//			5*10=50(50~59)

totalPage = (int)(Math.ceil((double)totalRecord/numPerPage));
//예 37개글 totalPage/numPerPage 37/10 Math.ceil(37/10)==>4.0
totalBlock = (int)(Math.ceil((double)totalPage/pagePerBlock));
//전체 블럭
%>
<html>
  <head>
    <script type="text/javascript">
      function check() {
    	  if(document.searchForm.keyWord.value==''){
    		  alert("검색어를 입력하세요");
    		  document.searchForm.keyWord.focus();
    		  return false;
    	  }//if-end
    	  document.searchForm.submit(); //전송
	}//check-end
	
	//reload
	function list() { //reload = "true"일때 사용
		document.listForm.action="list.jsp";
		document.listForm.submit(); //전송
	}
	
	//글내용보기
	function read(no) { //no = 글번호, 글 내용 보기에서 사용하려고
		document.readForm.action="content.jsp";
		document.readForm.num.value=no; //글번호
		document.readForm.submit(); //전송 content.jsp로 이동	
	}
    </script>
    <style type="text/css">
    h2 {
	text-align: center;
	}
	table {
	margin: auto;
	width: 80%;
}
    </style>
  </head>
  <body>
    <h2>리스트</h2>
    <table>
      <tr>
        <td align="right">
        	전체 글 갯수 : <%=totalRecord %>
        	게시글(<font color='blue'><%=nowPage+1%> / <%=totalPage %></font>)&nbsp;
        	<a href="writeForm.jsp">글쓰기</a>
        </td>
      </tr>
    </table>
    <table border="1">
      <tr>
        <td colspan="2" align="center">
        <%
        if(vec.isEmpty()){
        	out.println("등록된 게시글이 없습니다");
        }else{
        	%>
        	<table border="1" width="100%">
        	  <tr bgcolor="#d0d0d0" height="120%">
        	    <td>번호</td>
        	    <td>글제목</td>
        	    <td>글쓴이</td>
        	    <td>날짜</td>
        	    <td>조회수</td>
        	  </tr>
        	  <%
        	  //페이지의 첫번째
        	  //beginPage beginPage+numPerPage
        	  //  0    0+10
        	  //  10   10+10
        	  //  20   20+10
        	  for(int i = beginPage; i<(beginPage+numPerPage);i++){
        		  if(i==totalRecord){
        			  break; 
        		  }
        		  
        		  BoardDTO dto = (BoardDTO)vec.get(i);
        		  
        		  String name = dto.getName();
        		  String subject = dto.getSubject();
        		  String regdate = dto.getRegdate();
        		  
        		  int depth = dto.getDepth();
        		  int num = dto.getNum();
        		  int count = dto.getCount();
        		  %>
        		  <tr>
        		    <td><%=totalRecord-i %></td> <%-- 글번호는 역순 표시 --%>
        		    <td>
        		    <%
        		    //답글 들여쓰기
        		    if(depth>0){
        		    	for(int re = 0; re<depth; re++){
        		    		out.println("&nbsp;&nbsp;");
        		    	}//for-end
        		    }//if-end
        		    %>
        		    <%-- 글 제목을 클릭하면 글 내용보기로 가게 한다 --%>
        		    <a href = "javaScript:read('<%=num %>')">
        		      <%=subject %>
        		    </a>
        		    </td>
        		    <td><%=name %></td>
        		    <td><%=regdate %></td>
        		    <td><%=count %></td>
        		  </tr>
        		  <%
        	  }//for-end
        	  %>
        	</table>
        	<%
        }//else-end 글이 있을때
        %>
        </td>
      </tr>
      <tr>
        <td colspan="2"><br></td>
      </tr>
      <%-- 1차 실행 --%>
      <tr>
        <td align="center">Go to Page
        <%
        if(totalRecord>0){//글이 있을때만, 블럭처리 페이지 처리를 하게된다
        	//이전블럭
        	if(nowBlock>0){
        		%>
        		<a href="list.jsp?nowBlock=<%=nowBlock-1%>&page=<%=((nowBlock-1)*pagePerBlock+9)%>&keyField=<%=keyField%>&keyWord=<%=keyWord%>">
        		[이전블럭(<%=pagePerBlock %>)]
        		</a>
        		<%
        	}//if()-end
        	
        	//페이지 처리
        	for(int i=0;i<pagePerBlock; i++){
        		%>
        		<a href="list.jsp?nowBlock=<%=nowBlock%>&page=<%=(nowBlock*pagePerBlock)+i%>">
        		[<%=(nowBlock*pagePerBlock)+i+1 %>]
        		</a>
        		<%
        		
        		if(((nowBlock*pagePerBlock)+i+1)==totalPage){
        			break; //글이 더이상 없을 때 for문 탈출
        		}
        	}//for()-end, 페이지 처리
        	
        	//다음 블럭
        	if(totalBlock>nowBlock+1){
        		%>
        		<a href="list.jsp?nowBlock=<%=nowBlock+1%>&page=<%=(nowBlock+1)*pagePerBlock%>&keyField=<%=keyField%>&keyWord=<%=keyWord%>">
        		[다음블럭(<%=pagePerBlock %>)]
        		</a>
        		<%
        	}
        }//if-end 글이 있을때만, 블럭처리, 페이지 처리
        //2차실행
        %>
        </td>
        <td align="right">
          <a href="javaScript:list()">리스트 처음으로</a>
        </td>
      </tr>
    </table>
    
    <%-- 글 검색 폼 --%>
    <form name="searchForm" method="get" action="list.jsp">
    <table bgcolor="ivory" border="1">
      <tr>
        <td align="center">
          <select name="keyField">
            <option value="subject">글제목</option>
            <option value="name">글쓴이</option>
            <option value="content">글내용</option>
          </select>
            <input type="text" name="keyWord" size="20">
            <input type="hidden" name="page" value="0">
            <input type="button" value="검색" onclick="check()">
        </td>
      </tr>
    </table>
    </form>
    
    <%-- 글 내용 보기 폼 --%>
    <form name="readForm" method="post" action="">
      <input type="hidden" name="num" value=""><!-- javaScript에서 넣는다 -->
      <input type="hidden" name="page" value="<%=nowPage%>">
      <input type="hidden" name="keyField" value="<%=keyField%>">
      <input type="hidden" name="keyWord" value="<%=keyWord%>">
    </form>
    
    <%-- 리스트 폼 --%>
    <form name="listForm" method="post" action="">
      <input type="hidden" name="reload" value="true">
      <input type="hidden" name="page" value="0">
      <input type="hidden" name="nowBlock" value="0">
    </form>
  </body>
</html>

