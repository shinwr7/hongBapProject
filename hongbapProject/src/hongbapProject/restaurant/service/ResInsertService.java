package hongbapProject.restaurant.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hongbapProject.restaurant.model.ResDAO;
import hongbapProject.restaurant.model.ResVO;

public class ResInsertService implements IResService{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			String resCategory = request.getParameter("resCategory");
			String resName = request.getParameter("resName");
			String resAddr = request.getParameter("resAddr");
			String resPnum = request.getParameter("resPnum");
			String resTime = request.getParameter("resTime");
			String resHoliday = request.getParameter("resHoliday");
			String resHomepage = request.getParameter("resHomepage");
			
			
			ResDAO dao = ResDAO.getInstance();
			ResVO res = new ResVO();
			
			res.setResName(resName);
			res.setResAddr(resAddr);
			res.setResPnum(resPnum);
			res.setResTime(resTime);
			res.setResHoliday(resHoliday);
			res.setResHomepage(resHomepage);
			res.setResCategory(resCategory);
			
			int resultCode =dao.insertRes(res);
			
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
