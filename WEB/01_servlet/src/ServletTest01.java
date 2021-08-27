import java.io.*; //PrintWriter, IOException
import javax.servlet.*;
import javax.servlet.http.*;

public class ServletTest01 extends HttpServlet{
	
	//오버라이딩
	//doGet():디폴트 실행 .된다
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException{
		
		response.setContentType("text/html;charset=UTF-8"); //클라이언트로 응답할때 한걸 처리
		
		PrintWriter out = response.getWriter(); //클라이언트로 응답하기 위해서 out 객체 생성
		
		//클라이언트로 응답
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>Hello</h2>");
		out.println("<h3>안녕하세요 서블릿 공부하러 왔어요</h3>");
		out.println("");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
		//컴파일하고(저장) web.xml에 서블릿 등록 한다, 서블릿을 실행한다
		
	} //doGet() -end
}//class-end
