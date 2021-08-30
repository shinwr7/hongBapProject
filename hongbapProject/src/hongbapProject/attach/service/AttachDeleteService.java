package hongbapProject.attach.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hongbapProject.attach.model.AttachDAO;

public class AttachDeleteService implements IAttachService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		HttpSession session = null;
		session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String nick = (String)session.getAttribute("nick_session");
		
			
		AttachDAO dao = AttachDAO.getInstance();
		 int resultCode = dao.attachDelete(nick);
		
		if(resultCode == 1) {
			System.out.println("attachDelete 서비스 실행 완료");
			
		} else {
			System.out.println("attachDelete 서비스 실행 실패");
		}
			
		
		
		
		
		
	}
}
