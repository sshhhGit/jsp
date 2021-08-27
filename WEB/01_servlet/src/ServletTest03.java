import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class ServletTest03 extends HttpServlet{
	
	//doGet()오버라이딩
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html;charset=UTF-8"); //응답할때 한글처리
		
		PrintWriter out = response.getWriter(); //응당하기 위해 out 객체 생성
		
		//클라이언트가 보내준 데이터 받기
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		//DB처리
		
		//클라이언트로 응답하기
		
		out.println("<html>");
		out.println("<body>");
		
		out.println("당신의 이름 :" + name + "<br>");
		out.println("당신의 이메일 :" + email + "<br>");
		out.println("<pre>"+ content + "</pre>");
		
		out.println("</body>");
		out.println("</html>");
		
		out.close();
		//컴파일하고, web.xml에 서블릿 등록
		//서블릿 실행
		
	}//doGet-end
}//class-end
