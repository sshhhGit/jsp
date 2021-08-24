package mailupload;
import java.io.*;

import javax.servlet.http.*;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;

public class EmailUpload {
	//사용자 정의 메서드
	public String upload(HttpServletRequest request) {
		String reply="";
		try {
			String savepath="c:\\_upload\\";
			int size = 1024*1024*5;
			
			MultipartRequest mul = new MultipartRequest(request, savepath, size, "utf-8", new DefaultFileRenamePolicy());
			
			String from = mul.getParameter("from");
			String to = mul.getParameter("to");
			String subject = mul.getParameter("subject");
			String content = mul.getParameter("content");
			
			//제목, 내용 인코딩 처리
			subject = new String(subject.getBytes("utf-8"), "8859_1");
			content = new String(content.getBytes("utf-8"), "8859_1");
			
			MailMessage mail = new MailMessage("smtp.nate.com");
			mail.from(from);
			mail.to(to);
			mail.setSubject(subject);
			
			PrintStream out = mail.getPrintStream();
			out.print(content);
			mail.sendAndClose();
			
			reply = "메일보내기와 파일 업로드 성공";
		} catch (Exception ex) {
			reply = "메일보내기와 파일 업로드 실패" + ex;
		}
		return reply;
	}//upload()-end
}//class-end
