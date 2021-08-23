package hongbapProject.board.service;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hongbapProject.board.model.BoardDAO;

public class BoardDeleteService implements IBoardService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		HttpSession session = null;
		session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");	
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String idSession = request.getParameter("id_session");
		
		String bid = request.getParameter("bid");
		
		
		if(idSession==null) {
			try {
				String ui = "/user/userLogin.jsp";
				RequestDispatcher dp =
						request.getRequestDispatcher(ui);
				dp.forward(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		try {
			
			BoardDAO dao = BoardDAO.getInstance();
			
			
			int resultCode =dao.boardDelete(bid);
			
			if(resultCode == 1 ) {
				System.out.println("글삭제 정상 작동");
			} else {
				System.out.println("글삭제 실패");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		
	}

	}

