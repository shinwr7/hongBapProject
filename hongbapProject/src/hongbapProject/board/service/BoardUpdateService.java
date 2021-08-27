package hongbapProject.board.service;



import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import hongbapProject.board.model.BoardDAO;
import hongbapProject.board.model.BoardVO;

public class BoardUpdateService implements IBoardService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		HttpSession session = null;
		session=request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			
			String bid = (String)request.getParameter("bId");
			String bwriter = (String)request.getParameter("bWriter");
			String btitle = (String)request.getParameter("bTitle");
			String bcontent = (String)request.getParameter("bContent");
			
			
			BoardDAO dao = BoardDAO.getInstance();
			
	
			
			
			
			
			BoardVO board = new BoardVO();
		
			Timestamp bdate = new Timestamp(System.currentTimeMillis());
			
			
			board.setbId(Integer.parseInt(bid));
			board.setbTitle(btitle);
			board.setbContent(bcontent);
			board.setbHit(0);
			board.setbWriter(bwriter);
			board.setbDate(bdate);
			
			int resultCode = dao.update(board);
			
			if(resultCode==1) {
				System.out.println("업데이트 완료");
			} else {
				System.out.println("업데이트 실패");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
