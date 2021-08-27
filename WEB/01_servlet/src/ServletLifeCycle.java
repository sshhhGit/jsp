

import java.io.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletLifeCycle
 */
@WebServlet("/ServletLifeCycle")
public class ServletLifeCycle extends HttpServlet {
    
	public int cnt = 0; //사이트 접속 인원수 Count
	
	public void init(ServletConfig conf) throws ServletException { 
		//초기화 작업. DB초기화
		System.out.println("init() called...");
		
	}//init() - end

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 클라이언트 요청시마다 클라이언트 요청을 받는다

		System.out.println("service() called.....");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter(); //out객체 생성
		
		out.println("<html>");
		out.println("<body>");
		
		cnt++; // 방문 횟수 카운트
		
		out.println("<h2>service() 방문횟수 : " + cnt + "</h2>");
		

		out.println("</body>");
		out.println("</html>");
		
		out.close();

		
		
	
	
	}//service() - end
	
	//destory() : 클래스가 메모리에서 파기되기 직전에 호출되어 진다
	public void destory(){
		System.out.println("destroy() called....");
	}
	
}//class-end
