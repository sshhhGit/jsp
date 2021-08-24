package mail;
import java.io.*;
import com.oreilly.servlet.*;

public class MailSender {
	//필드=전역변수=프로퍼티=property
	private String from; 	//보내는사람
	private String to;		//받는 사람
	private String subject;	//메일제목
	private String content; //메일내용
	public MailSender() {
		from = "";
		to = "";
		subject = "";
		content = "";
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	//기타 메서드
	public String send() {
		String reply = "";
		try {
			MailMessage mail = new MailMessage("smtp.nate.com");
			mail.from(from);
			mail.to(to);
			mail.setSubject(subject);
			
			PrintStream out = mail.getPrintStream(); //out객체 생성
			out.print(content);
			mail.sendAndClose(); //출력 스트림 내용을 보내고
			
			reply = "메일보내기 성공";
			
		} catch (Exception ex) {
			reply = "메일보내기 실패  : " + ex;
		}
		
		return reply;
	}
	
	
	
	
	
	
	
	
}//class-end
