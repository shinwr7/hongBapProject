package hongbapProject.restaurant.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hongbapProject.menu.model.MenuDAO;
import hongbapProject.restaurant.model.ResDAO;

public class ResDeleteService implements IResService{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session = null;
		session=request.getSession();
		
		String StrresId=(String)session.getAttribute("resId");
		int resId = Integer.parseInt(StrresId);
		 
		// menu 테이블과 restaurant 테이블이 외래키로 연결되어있기 때문에
		// menu 테이블 행부터 삭제 해야함
		MenuDAO mdao = MenuDAO.getInstance();
		int mDeleteResult = mdao.menuDelete(resId);
		
		if(mDeleteResult ==1) {
			System.out.println("메뉴 삭제 완료");
		}else {
			System.out.println("메뉴 삭제 실패");
		}
		
		// 그 후 레스토랑 행 삭제
		ResDAO rdao = ResDAO.getInstance();
		int rDeleteResult = rdao.resDelete(resId);
		if(rDeleteResult == 1) {
			System.out.println("레스토랑 삭제 완료");
		// 레스토랑 행 삭제되면 발급된 레스토랑 Id 세션 삭제
			session.removeAttribute("resId");
		}else {
			System.out.println("레스토랑 삭제 실패");
		}
		
		
	}
}
