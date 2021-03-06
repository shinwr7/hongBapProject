package hongbapProject.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	private DataSource ds;
	
	private BoardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}//�깮�꽦�옄 �걹
	
	private static BoardDAO dao = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return dao;
	}//getInstance �걹
	
public int boardWrite(BoardVO board) {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	int resultCode = 0;
	
	String sql = "INSERT INTO requestBoard (bwriter, btitle, bcontent, bdate, bhit)"
			+ "VALUES (?, ?, ?, now(), 0)";
	
	try { 
		
		
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, board.getbWriter());
		pstmt.setString(2, board.getbTitle());
		pstmt.setString(3, board.getbContent());
		
		pstmt.executeUpdate();
		// 而ㅻ꽖�뀡 �깮�꽦 諛� pstmt�뿉 荑쇰━臾� �꽔怨� �셿�꽦�떆耳쒖꽌 �떎�뻾源뚯� �븯怨�
		// close()濡� 硫붾え由ы쉶�닔源뚯� �빐二쇱꽭�슂.
		resultCode = 1;
	} catch(Exception e) {
		e.printStackTrace();
		resultCode = 0;
	} finally {
		try {
			if(con!=null && !con.isClosed()) {
				con.close();
			}
			if(pstmt != null && !pstmt.isClosed()) {
				pstmt.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	return resultCode;
}// write �걹
	
public List<BoardVO> getPageList(int pageNum) {
	// �궡遺��뿉�꽌 �궗�슜�븷 蹂��닔 �꽑�뼵
	Connection con =null;
	PreparedStatement pstmt = null;
	ResultSet rs= null;
	List<BoardVO> boardList = new ArrayList<BoardVO>();
	String sql = "SELECT * FROM requestBoard ORDER BY bid DESC limit ?, 10";
	// 荑쇰━臾�(SELECT 援щЦ, �뿭�닚, 10媛쒖뵫 pageNum�뿉 留욎떠�꽌);
	
		try {	
			
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pageNum);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setbId(rs.getInt("bid"));
				board.setbWriter(rs.getString("bwriter"));
				board.setbTitle(rs.getString("btitle"));
				board.setbContent(rs.getString("bcontent"));
				board.setbHit(rs.getInt("bhit"));
				board.setbDate(rs.getTimestamp("bdate"));
				
				boardList.add(board);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		
		} finally {
			
			try {
				if(con!=null && !con.isClosed()) {
					con.close();
				}
				if(pstmt != null && !pstmt.isClosed()) {
					pstmt.close();
				}
				if(rs !=null && !rs.isClosed()) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
	
} return boardList;
		
}// paging �걹


public int getCountBoard() {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	int countBoard = 0 ;
	
	String sql = "SELECT COUNT(*) FROM requestBoard";
	
	try {
		con = ds.getConnection();
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		if(rs.next()) {
		countBoard = rs.getInt(1);
		}
		
				
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(con!=null&&!con.isClosed()) {
				con.close();
			}
			if(pstmt!=null&&!pstmt.isClosed()) {
				con.close();
			}
			if(rs!=null&&!rs.isClosed()) {
				rs.close();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	return countBoard;
}

public BoardVO getBoardDetail(String bId) {
	// bId�뿉 �빐�떦�븯�뒗 湲� �젙蹂대�� 媛��졇���꽌 由ы꽩�븯�룄濡� 濡쒖쭅 �옉�꽦�빐二쇱뀓
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardVO board = new BoardVO();
	
	String sql = "SELECT * FROM requestBoard WHERE bid=?";
	
	try {
		con=ds.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bId);
		rs=pstmt.executeQuery();
		
		
		if(rs.next()) {
			board.setbId(rs.getInt("bid"));
			board.setbTitle(rs.getString("btitle"));
			board.setbContent(rs.getString("bcontent"));
			board.setbWriter(rs.getString("bwriter"));
			board.setbDate(rs.getTimestamp("bdate"));
			board.setbHit(rs.getInt("bhit"));
		}
		
		
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(con!=null&&!con.isClosed() ) {
				con.close();
			}
			if(pstmt!=null&&!pstmt.isClosed() ) {
				pstmt.close();
			}
			if(rs!=null&&!rs.isClosed() ) {
				rs.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	} return board;
}// getBoardDetail �걹

public void upHit(String bid) {
	// �븘�슂 蹂��닔�뱾�쓣 �깮�꽦
	Connection con = null;
	PreparedStatement pstmt = null;
	
	// �듅�젙 湲��쓽 議고쉶�닔瑜� 1 �삱由щ뒗 荑쇰━臾�
	String sql = "UPDATE requestBoard SET bhit = bhit + 1 " +
	"WHERE bid = ?";
	
	
	// DB �뿰寃� �썑 肄붾뱶 �떎�뻾
	try { 
		con=ds.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, bid);
		pstmt.executeUpdate();
		
				
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			
			if(con!=null&&!con.isClosed()) {
				con.close();
			}
			if(pstmt!=null&&!pstmt.isClosed()) {
				pstmt.close();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
} // upHit �걹

public int boardDelete(String bid) {
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	int resultCode ;
	
	String sql = "DELETE FROM requestBoard WHERE bid=?";
			
	try { 
		
	
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, bid);
		
		pstmt.executeUpdate();
		
		resultCode = 1;
	} catch(Exception e) {
		e.printStackTrace();
		resultCode = 0;
	} finally {
		try {
			if(con!=null && !con.isClosed()) {
				con.close();
			}
			if(pstmt != null && !pstmt.isClosed()) {
				pstmt.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	return resultCode;
} // boardDelete 끝
public int update(BoardVO board) {
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	int resultCode ;
	//구문 작성
	//bID는 auto_increment가 붙어있으므로 입력 안해도됌
	//bName, bTitle, bContent는 폼에서 날려준걸 넣음
	//bDate는 자동으로 현재 서버시각을 입력함
	// bHit는 자동으로 0을 입력
	String sql = 
		"UPDATE requestBoard SET btitle=?, bcontent=?, bhit=?, bwriter=?, bdate=? WHERE bid=?";
	try { 
		
	
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, board.getbTitle());
		pstmt.setString(2, board.getbContent());
		pstmt.setInt(3, board.getbHit());
		pstmt.setString(4, board.getbWriter());
		pstmt.setTimestamp(5, board.getbDate());
		pstmt.setInt(6, board.getbId());
		pstmt.executeUpdate();
		// 커넥션 생성 및 pstmt에 쿼리문 넣고 완성시켜서 실행까지 하고
		// close()로 메모리회수까지 해주세요.
		resultCode = 1;
	} catch(Exception e) {
		e.printStackTrace();
		resultCode = 0;
	} finally {
		try {
			if(con!=null && !con.isClosed()) {
				con.close();
			}
			if(pstmt != null && !pstmt.isClosed()) {
				pstmt.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	return resultCode;
} // update 끝

}
