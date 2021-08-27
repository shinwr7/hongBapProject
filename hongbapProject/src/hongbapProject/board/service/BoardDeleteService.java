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
		
		String idSession = (String)session.getAttribute("id_session");
		String pwSession = (String)session.getAttribute("pw_session");
		String bid = (String)request.getParameter("bId");
		String UserPw = (String)request.getParameter("UserPw");
		System.out.println("UserPw 값: "+UserPw);
		System.out.println("보드 딜리트 서비스의 파라미터로 받아온 bId 값 :" + bid);
		
		
		if(idSession==null&&bid==null) {
			try {
				String ui = "/user/userLogin.jsp";
				RequestDispatcher dp =
						request.getRequestDispatcher(ui);
				dp.forward(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(UserPw==null){
			try {
				String ui = "/board/boardDelete.jsp?bId="+bid;
				RequestDispatcher dp =
						request.getRequestDispatcher(ui);
				request.setAttribute("bId", bid);
				dp.forward(request, response);
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(pwSession!=null&&pwSession.equals(UserPw)) {
					
					
					
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
					
					
				}else {
					try {
						String ui1 = "/user/userLogin.jsp";
						RequestDispatcher dp1 =
								request.getRequestDispatcher(ui1);
						dp1.forward(request, response);
					} catch(Exception e) {
						e.printStackTrace();
					}
				}
				
			
	}
	}

