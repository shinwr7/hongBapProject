//package hongbapProject.attach.model;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;
//
//import hongbapProject.board.model.BoardDAO;
//import hongbapProject.board.model.BoardVO;
//
//public class AttachDAO {
//	public class BoardDAO {
//		private DataSource ds;
//		
//		private BoardDAO() {
//			try {
//				Context ct = new InitialContext();
//				ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
//			} catch(Exception e) {
//				e.printStackTrace();
//			}
//		}//�깮�꽦�옄 �걹
//		
//		private static BoardDAO dao = new BoardDAO();
//		
//		public static BoardDAO getInstance() {
//			return dao;
//		}//getInstance �걹
//		
//	public int boardWrite(BoardVO board) {
//		
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		
//		int resultCode = 0;
//		
//		String sql = "INSERT INTO requestBoard (bwriter, btitle, bcontent, bdate, bhit)"
//				+ "VALUES (?, ?, ?, now(), 0)";
//		
//		try { 
//			
//			
//			con = ds.getConnection();
//			pstmt = con.prepareStatement(sql);
//			
//			pstmt.setString(1, board.getbWriter());
//			pstmt.setString(2, board.getbTitle());
//			pstmt.setString(3, board.getbContent());
//			
//			pstmt.executeUpdate();
//			// 而ㅻ꽖�뀡 �깮�꽦 諛� pstmt�뿉 荑쇰━臾� �꽔怨� �셿�꽦�떆耳쒖꽌 �떎�뻾源뚯� �븯怨�
//			// close()濡� 硫붾え由ы쉶�닔源뚯� �빐二쇱꽭�슂.
//			resultCode = 1;
//		} catch(Exception e) {
//			e.printStackTrace();
//			resultCode = 0;
//		} finally {
//			try {
//				if(con!=null && !con.isClosed()) {
//					con.close();
//				}
//				if(pstmt != null && !pstmt.isClosed()) {
//					pstmt.close();
//				}
//			} catch(Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return resultCode;
//	}// write �걹
//		
//	public List<BoardVO> getPageList(int pageNum) {
//		// �궡遺��뿉�꽌 �궗�슜�븷 蹂��닔 �꽑�뼵
//		Connection con =null;
//		PreparedStatement pstmt = null;
//		ResultSet rs= null;
//		List<BoardVO> boardList = new ArrayList<BoardVO>();
//		String sql = "SELECT * FROM requestBoard ORDER BY bid DESC limit ?, 10";
//		// 荑쇰━臾�(SELECT 援щЦ, �뿭�닚, 10媛쒖뵫 pageNum�뿉 留욎떠�꽌);
//		
//			try {	
//				
//				con = ds.getConnection();
//				pstmt = con.prepareStatement(sql);
//				pstmt.setInt(1, pageNum);
//				rs=pstmt.executeQuery();
//				
//				while(rs.next()) {
//					BoardVO board = new BoardVO();
//					board.setbId(rs.getInt("bid"));
//					board.setbWriter(rs.getString("bwriter"));
//					board.setbTitle(rs.getString("btitle"));
//					board.setbContent(rs.getString("bcontent"));
//					board.setbHit(rs.getInt("bhit"));
//					board.setbDate(rs.getTimestamp("bdate"));
//					
//					boardList.add(board);
//				}
//				
//			} catch(Exception e) {
//				e.printStackTrace();
//			
//			} finally {
//				
//				try {
//					if(con!=null && !con.isClosed()) {
//						con.close();
//					}
//					if(pstmt != null && !pstmt.isClosed()) {
//						pstmt.close();
//					}
//					if(rs !=null && !rs.isClosed()) {
//						rs.close();
//					}
//				} catch(Exception e) {
//					e.printStackTrace();
//				}
//		
//	} return boardList;
//			
//	}// paging �걹
//
//
//	public int getCountBoard() {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		int countBoard = 0 ;
//		
//		String sql = "SELECT COUNT(*) FROM requestBoard";
//		
//		try {
//			con = ds.getConnection();
//			pstmt=con.prepareStatement(sql);
//			rs=pstmt.executeQuery();
//			
//			if(rs.next()) {
//			countBoard = rs.getInt(1);
//			}
//			
//					
//			
//		} catch(Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if(con!=null&&!con.isClosed()) {
//					con.close();
//				}
//				if(pstmt!=null&&!pstmt.isClosed()) {
//					con.close();
//				}
//				if(rs!=null&&!rs.isClosed()) {
//					rs.close();
//				}
//				
//			} catch(Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return countBoard;
//	}
//}
