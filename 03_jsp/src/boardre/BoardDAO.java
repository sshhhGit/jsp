package boardre;

import java.sql.*;
import java.util.*; //Vector, List, ArrayList

public class BoardDAO {
	//전역변수
	String DRIVER = "com.mysql.jdbc.Driver";
	String URL = "jdbc:mysql://localhost:3306/mydb";
	String USER = "root";
	String PWD = "12345";
	
	//생성자
	public BoardDAO(){
		try {
			Class.forName(DRIVER);
			System.out.println("드라이버 로딩 성공");
		} catch (ClassNotFoundException cnf) {
			System.out.println("드라이버 로딩 실패 " + cnf);
		}
	}//cons-end
	
	//전역변수
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	//==========
	//pos증가
	//==========
	public void upPos(){
		try {
			con = DriverManager.getConnection(URL,USER,PWD);
			stmt = con.createStatement();
			
			sql = "update board set pos=pos+1"; //글쓰기, 답글쓰기에서 호출할것임
			
			stmt.executeUpdate(sql); //쿼리수행
			
		} catch (Exception ex1) {
			System.out.println("upPos() 예외 " + ex1);
		}finally{
			try {
				if(con != null){con.close();}
				if(stmt != null){stmt.close();}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}//finally-end
	}//upPos()-end
	
	//==========
	//글쓰기 insert
	//==========
	public void insertDAO(BoardDTO dto){
		upPos();
		
		try {
			con = DriverManager.getConnection(URL,USER,PWD);
			sql = "insert into board(name,subject,content,pos,depth,regdate,pw,ip) values(?,?,?,?,?,NOW(),?,?)";
			pstmt = con.prepareStatement(sql);
			
			//"?"값 채우기
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			
			pstmt.setInt(4, dto.getPos());
			pstmt.setInt(5, dto.getDepth());
			//날짜
			pstmt.setString(6, dto.getPw());
			pstmt.setString(7, dto.getIp());
			
			pstmt.executeUpdate(); //쿼리 수행
			
		} catch (Exception ex1) {
			System.out.println("insertDAO() 예외 : " + ex1);
		}finally{
			try {
				if(con != null){con.close();}
				if(pstmt != null){pstmt.close();}
			} catch (Exception ex2) {}
		}//finally-end
	}//insertDAO()-end
	
	//================
	//전체 리스트, 검색 리스트
	//=================
	public Vector getList(String keyField, String keyWord){
		Vector<BoardDTO> vec = new Vector<BoardDTO>();
		
		try {
			con = DriverManager.getConnection(URL, USER, PWD);
			stmt = con.createStatement(); //Statement 생성
			
			if(keyWord.equals(null) || keyWord.equals("")){
				//전체글 리스트
				sql = "select * from board order by pos asc";
			}else{
				//검색어가 있을때
				sql = "select * from board where "+keyField+" like '%"+keyWord+"%' order by pos asc";
			}
			
			rs = stmt.executeQuery(sql);
			
			//dto에 담아서, dto를 vec에 담고, vec를 리턴한다
			
			while(rs.next()){
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				
				dto.setPos(rs.getInt("pos"));
				dto.setDepth(rs.getInt("depth"));
				
				dto.setRegdate(rs.getString("regdate"));
				dto.setPw(rs.getString("pw"));
				
				dto.setCount(rs.getInt("count"));
				dto.setIp(rs.getString("ip"));
				
				vec.add(dto); //vec에 dto담기
				
			}//while-end
		} catch (Exception ex1) {
			System.out.println("getList() 예외 : " + ex1);
		}finally{
			try {
				if(con != null){con.close();}
				if(rs != null){rs.close();}
				if(stmt != null){stmt.close();}
			} catch (Exception ex2) {}
		}//finally-end
		return vec;
	}//getList()-end
	
	//===========
	//조회수
	//===========
	public void upCount(int num){
		try {
			con = DriverManager.getConnection(URL, USER, PWD);
			sql = "update board set count = count+1 where num=" + num;
			
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception ex1) {
			System.out.println("upCount() 예외 : " + ex1);
		} finally{
			try {
				if(con != null){con.close();}
				if(pstmt != null){pstmt.close();}
			} catch (Exception ex2) {}
		}//finally-end
	}//upCount()-end
	
	//=====================
	//글내용 보기, 글 수정 폼에서도 사용
	//=====================
	public BoardDTO getBoard(int num){
		BoardDTO dto = new BoardDTO(); //객체생성
		try {
			con = DriverManager.getConnection(URL, USER, PWD);
			sql = "select * from board where num=" + num;
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				
				dto.setPos(rs.getInt("pos"));
				dto.setDepth(rs.getInt("depth"));
				
				dto.setRegdate(rs.getString("regdate"));
				dto.setPw(rs.getString("pw"));
				
				dto.setCount(rs.getInt("count"));
				dto.setIp(rs.getString("ip"));
			}//if()-end
		} catch (Exception ex1) {
			System.out.println("getBoard() 예외 : " + ex1);
		} finally{
			try {
				if(con != null){con.close();}
				if(pstmt != null){pstmt.close();}
				if(rs != null){rs.close();}
			} catch (Exception ex2) {}
		}//finally-end
		return dto;
	}//getBoard()-end
	
	//=============
	//DB글 수정
	//=============
	public void updateBoard(BoardDTO dto){
		try {
			con = DriverManager.getConnection(URL, USER, PWD);
			sql = "update board set name=?,subject=?,content=? where num=?";
			
			pstmt = con.prepareStatement(sql);
			
			//?값 채우기
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getNum());
			
			pstmt.executeUpdate(); //쿼리수행, (insert, update, delete)
		} catch (Exception ex1) {
			System.out.println("updateBoard() 예외 : " + ex1);
		} finally{
			try {
				if(con != null){con.close();}
				if(pstmt != null){pstmt.close();}
			} catch (Exception ex2) {}
		}//finally-end
	}//updateBoard()-end
}
