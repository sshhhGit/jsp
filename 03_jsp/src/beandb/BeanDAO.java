package beandb;
import java.sql.*; //Connection, Statement, prepareStatement, ResultSet 기본제공
import java.util.*; //Vector, List, ArrayList

//DAO : Data Access Object = 비지니스 로직
public class BeanDAO {
	//전역변수
	private String DRIVER = "com.mysql.jdbc.Driver";
	private String URL = "jdbc:mysql://localhost:3306/mydb";
	private String USER = "root";
	private String PWD = "12345";
	
	//생성자 - 초기화
	public BeanDAO() {
		try {
			Class.forName(DRIVER);
			System.out.println("드라이버 로딩 성공");
		} catch (ClassNotFoundException cnf) {
			System.out.println("드라이버 로딩 실패 : " + cnf);
		}
	}//const-end
	
	//insert
	public void insertDB(BeanDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con=DriverManager.getConnection(URL, USER, PWD); //DB연결
			String sql = "insert into test1 values(?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql); //생성시 인자가 들어감
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getContent());
			
			pstmt.executeUpdate(); //insert, update, delete
			//executeQuery() : select
			
		} catch (Exception ex) {
			System.out.println("insertDB() 예외 : " + ex);
		}finally{
			//예외발생에 상관없이 무조건 실행
			//앞쪽에 return문이 있어도 finally는 무조건 실행
			//System.exit(0) 종료 구문이 있을대만 finally를 실행하지 않는다.
			//finally에는 rs.close(), pstmt.close(), con.close(); DB종료
			try {
				if (pstmt != null) { pstmt.close();}
				if (con != null) { con.close();}
			} catch (Exception ex2) {}
		}//finally=end
		
	}//insertDB()-end
	
	
	//리스트(글목록)
	public Vector getList(){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<BeanDTO> vec = new Vector<BeanDTO>();
		try {
			con = DriverManager.getConnection(URL, USER, PWD); //DB연결
			stmt = con.createStatement(); //Statement생성
			rs = stmt.executeQuery("select * from test1"); //실행시 인자 발생, 쿼리 실행 후 결과를 rs에 할당
			
			while(rs.next()){
				BeanDTO dto = new BeanDTO(); //객체생성
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setContent(rs.getString("content"));
				
				vec.add(dto);
			}
			
		} catch (Exception ex1) {
			System.out.println("getList() 예외 : " + ex1);
		}finally{
			try{
				if(con != null){con.close();}
				if(stmt != null){stmt.close();}
				if(rs != null){rs.close();}
			}catch(Exception ex2){}
		}//finally-end
		
		return vec;
	}//getList()-end
		
	
	/**
	   public static void main(String[] args) {
		 new BeanDAO();
	}*/
	
}//class-end
