import java.io.*; //PrintWriter, IOException

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.Date;
import java.text.SimpleDateFormat; //날짜 형식



public class ServletTest02 extends HttpServlet{
	
	//doGet()오버라이딩
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html;charset=UTF-8"); //클라이언트로 응답할때 한글 처리
		PrintWriter out = response.getWriter(); //클라이언트로 응답하기 위해 out 객체 생성
		
		java.util.Date date = new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd H:mm:ss EEEE");
		
		//그림파일
		//WebContent/imgs폴더만들고 aa.jpg
		
		//클라이언트 응답하기
		out.println("<html>");
		out.println("<body>");
		out.println("<font size=5>");
		out.println("<center>");
		out.println("<img src='imgs/aa.jpg'>");
		
		out.println("<marquee>");
		out.println("오늘은 화요일 입니다 ~~~");
		out.println("</marquee>");
		
		out.println(sdf.format(date)); //날짜출력
		
		out.println("</center>");
		out.println("</font>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
		
		//컴파일하고, web.xml에 서블릿 등록
		//서블릿 실행
		
	}//doGet()-end
}//class-end
