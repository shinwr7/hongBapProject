package hongbapProject.menu.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hongbapProject.menu.model.MenuDAO;

public class MenuInsertService implements IMenuService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		MenuDAO dao = MenuDAO.getInstance();
		
		int resultCode=dao.insertMenu();
		if(resultCode ==1 ) {
			System.out.println("메뉴 입력 완료");
		}else {
			System.out.println("메뉴 입력 실패");
		}
		
		
	}
	
}
