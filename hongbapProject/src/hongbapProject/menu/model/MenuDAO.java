package hongbapProject.menu.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MenuDAO {
private DataSource ds;
	
	private MenuDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}//생성자 끝
	
	private static MenuDAO dao = new MenuDAO();
	
	public static MenuDAO getInstance() {
		return dao;
	}//getInstance 끝
	
	public int insertMenu(MenuVO menu) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql ="INSERT INTO resMenu (bid, menuName, menuBook, menuPrice) VALUES"
				+ "(?, ?, ?, ?)";
		
		try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
//		pstmt.setInt(1, bid);
//		pstmt.setString(2, );
		pstmt.executeUpdate();
		
		return 1;
		
		} catch(Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			try {
				if(con!=null&!con.isClosed()) {
					con.close();
				}
				if(pstmt!=null&!pstmt.isClosed()) {
					pstmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		
	}
}
