package hongbapProject.restaurant.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hongbapProject.restaurant.model.ResDAO;

public class ResInsertService implements IResService{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			ResDAO dao = ResDAO.getInstance();
			int resultCode =dao.insertRes();
			
			if(resultCode==1) {
				System.out.println("식당 입력 성공");
			}else {
				System.out.println("식당 입력 실패");
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
