

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest04
 */
@WebServlet("/ServletTest04") //web.xml에 등록 대신 어노테이션 사용
public class ServletTest04 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	response.setContentType("text/html;charset=UTF-8"); //응답할때 한글로 
	PrintWriter out = response.getWriter(); //응답하기 위해서 out 객체 생성
	
	//클라이언트가 보내준 데이터 받기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	//DB처리
	
	//클라이언트로 응답
	out.println("<html>");
	out.println("<body>");
	out.println("당신의 ID : " + id + "<br>");
	out.println("당신의 암호 : " + pw + "<br>");
	out.println("당신의 이름 : " + name + "<br>");
	out.println("</html>");
	out.println("</body>");
	out.close();
	
	}//doGet()-end

}//class-end
