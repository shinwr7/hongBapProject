package hongbapProject.restaurant.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ResDAO {
	
	private DataSource ds;
	
	private ResDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}//생성자 끝
	
	private static ResDAO dao = new ResDAO();
	
	public static ResDAO getInstance() {
		return dao;
	}//getInstance 끝
	
	
	public int getRandomResId() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int ranNum = 0;
		
		
		
		List<Integer> allResId = new ArrayList<Integer>();
		
		
		try {
			
			con = ds.getConnection();
			String sql = "SELECT resId FROM restaurant";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				int resId = rs.getInt("ResId");
				allResId.add(resId);
					
			} 
			
			Collections.shuffle(allResId);
			ranNum=allResId.get(0);
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
			
			
		} finally {
			try {
				if(con!=null&& !con.isClosed()) {
					con.close();
				}
				if(pstmt!=null&& !pstmt.isClosed()) {
					pstmt.close();
				}
				if(rs!=null&& !rs.isClosed()) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		} return ranNum;
		
	} // getRandomResId 끝
		
		public ResVO getResInfo(int idNum) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			ResVO randomRes = new ResVO();
			String sql = "SELECT * FROM restaurant WHERE resId=?";
			
			
			try {
				con = ds.getConnection();
				
				
				System.out.println("idNum값 : "+idNum);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, idNum);
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					
				int resId = rs.getInt("resId");
				String resName = rs.getString("resName");
				String resAddr = rs.getString("resAddr");
				String resPnum = rs.getString("resPnum");
				String resTime = rs.getString("resTime");
				String resHoliday = rs.getString("resHoliday");
				String resHomepage = rs.getString("resHomePage");
				String resCategory = rs.getString("resCategory");
				
				System.out.println("resName : "+resName);
				System.out.println("resAddr : "+resAddr);
				System.out.println("resPnum : "+resPnum);
				System.out.println("resTime : "+resTime);
				System.out.println("resHoliday : "+resHoliday);
				System.out.println("resHomepage : "+resHomepage);
				System.out.println("resCategory : "+resCategory);
				
				
				randomRes.setResId(resId);
				randomRes.setResName(resName);
				randomRes.setResAddr(resAddr);
				randomRes.setResPnum(resPnum);
				randomRes.setResTime(resTime);
				randomRes.setResHoliday(resHoliday);
				randomRes.setResHomepage(resHomepage);
				randomRes.setResCategory(resCategory);
				
				}
				
					
				
			} catch(SQLException e) {
				e.printStackTrace();
				
			}  finally{
				try {
				if(con != null && !con.isClosed()){
				con.close();
				}
				if(pstmt != null && !pstmt.isClosed()) {
					pstmt.close();
				}
				if(rs != null && !rs.isClosed()) {
					rs.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
			return randomRes;
		
	}// GetResInfo 끝
		
		public ArrayList<ResVO> getAllRes() {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<ResVO> resList = new ArrayList<>();
			
			try {
				
				con = ds.getConnection();
				String sql = "SELECT * FROM restaurant ";
				
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					ResVO res = new ResVO();
					int resId = rs.getInt("resId");
					String resName = rs.getString("resName");
					String resAddr = rs.getString("resAddr");
					String resPnum = rs.getString("resPnum");
					String resTime = rs.getString("resTime");
					String resHoliday = rs.getString("resHoliday");
					String resHomepage = rs.getString("resHomePage");
					String resCategory = rs.getString("resCategory");
					
					res.setResId(resId);
					res.setResName(resName);
					res.setResAddr(resAddr);
					res.setResPnum(resPnum);
					res.setResTime(resTime);
					res.setResHoliday(resHoliday);
					res.setResHomepage(resHomepage);
					res.setResCategory(resCategory);
					resList.add(res);
					
				}
				
				} catch(SQLException e) {
					System.out.println("예외 : "+e);
				} finally {
					try {
						if(con != null && !con.isClosed()) {
							con.close();
						}
						if(pstmt != null && !pstmt.isClosed()) {
							pstmt.close();
						}
					} catch(SQLException e) {
						e.printStackTrace();
					}
				}	
				return resList;
			}//getAllRes 끝
		
		public ArrayList<ResVO> getAllResByCategory(String category, int pageNum) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<ResVO> resListbyCategory = new ArrayList<>();
			
			try {
				
				con = ds.getConnection();
				String sql = "SELECT * FROM restaurant WHERE resCategory=? ORDER BY resId limit ?,10";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, category);
				pstmt.setInt(2, pageNum);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					ResVO res = new ResVO();
					int resId = rs.getInt("resId");
					String resName = rs.getString("resName");
					String resAddr = rs.getString("resAddr");
					String resPnum = rs.getString("resPnum");
					String resTime = rs.getString("resTime");
					String resHoliday = rs.getString("resHoliday");
					String resHomepage = rs.getString("resHomePage");
					String resCategory = rs.getString("resCategory");
					
					res.setResId(resId);
					res.setResName(resName);
					res.setResAddr(resAddr);
					res.setResPnum(resPnum);
					res.setResTime(resTime);
					res.setResHoliday(resHoliday);
					res.setResHomepage(resHomepage);
					res.setResCategory(resCategory);
					resListbyCategory.add(res);
					
				}
				
				} catch(SQLException e) {
					System.out.println("�삁�쇅 : "+e);
				} finally {
					try {
						if(con != null && !con.isClosed()) {
							con.close();
						}
						if(pstmt != null && !pstmt.isClosed()) {
							pstmt.close();
						}
					} catch(SQLException e) {
						e.printStackTrace();
					}
				}	
				return resListbyCategory;
			}//getAllResByCategory
	
public int getResCount() {
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int countNum = 0;
			String sql = "SELECT COUNT(*) FROM restaurant";
					
			try {
				
	            con = ds.getConnection();
				
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					countNum = rs.getInt(1);
				}
				
		} catch(Exception e) {
		     e.printStackTrace();     
	    } finally {
			try { // con 닫기
				if(con!=null && !con.isClosed()) {
					con.close();
				} // pstmt 닫기
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
				} // rs 닫기
				if(rs!=null && !rs.isClosed()) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}	
	}
		return countNum;
	} // count end

public int insertRes () {
	Connection con = null;
	PreparedStatement pstmt = null;
	int resultCode = 0;
	try {
		con=ds.getConnection();
		String sql = "INSERT INTO restaurant (resName, resAddr, resPnum, resTime, resHoliday, resHomepage, resCategory) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		pstmt=con.prepareStatement(sql);
		pstmt.executeUpdate();
		
		resultCode=1;
		
	} catch(Exception e) {
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
	return resultCode;
}

public int getResID(String resName) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	int resId =0;
	
	String sql ="SELECT resId FROM restaurant WHERE resName=?";
	
	try {
		con=ds.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, resName);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			resId = rs.getInt(1);
			return resId;
		}else {
			System.out.println("resId 불러오기 실패");
			return resId;
		}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con!=null&&!con.isClosed()) {
					con.close();
				}
				if(pstmt!=null&&!pstmt.isClosed()) {
					pstmt.close();
				}
				if(rs!=null&&!rs.isClosed()) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return resId;
	
}

public int resDelete(int resId) {
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String sql = "DELETE FROM restaurant WHERE resId=?";
	int resultCode = 0;
	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, resId);
		pstmt.executeUpdate();
		resultCode = 1;
		
	} catch(Exception e) {
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
	return resultCode;
}

public int resUpdate(ResVO res) {
	Connection con = null;
	PreparedStatement pstmt = null;
	
	int resultCode = 0;
	int resId = res.getResId();
	String resName = res.getResName();
	String resAddr = res.getResAddr();
	String resPnum = res.getResPnum();
	String resTime = res.getResTime();
	String resHoliday = res.getResHoliday();
	String resHomepage = res.getResHomepage();
	String resCategory = res.getResCategory();
	
	
	
	String sql = "UPDATE restaurant SET resName=?, resAddr=?, resPnum=?, resTime=?, "
			+ "resHoliday=?, resHomepage=?, resCategory=? WHERE resId=?";
	
	try {
		
		con= ds.getConnection();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, resName);
		pstmt.setString(2, resAddr);
		pstmt.setString(3, resPnum);
		pstmt.setString(4, resTime);
		pstmt.setString(5, resHoliday);
		pstmt.setString(6, resHomepage);
		pstmt.setString(7, resCategory);
		pstmt.setInt(8, resId);
		pstmt.executeUpdate();
		resultCode = 1;
		
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(con!=null&&!con.isClosed()) {
				con.close();
			}
			if(pstmt!=null&&!pstmt.isClosed()) {
				pstmt.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		return resultCode;	
}



}
