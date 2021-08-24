package hongbapProject.restaurant.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hongbapProject.restaurant.model.ResDAO;
import hongbapProject.restaurant.model.ResVO;

public class ResUpdateService implements IResService {
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
		HttpSession session= null;
		session = request.getSession();
		
		String strResId = (String)session.getAttribute("resId");
		int resId = Integer.parseInt(strResId);
		String resName = request.getParameter("resName");
		String resAddr = request.getParameter("resAddr");
		String resTime = request.getParameter("resTime");
		String resHoliday = request.getParameter("resHoliday");
		String resHomepage = request.getParameter("resHomepage");
		String resPnum = request.getParameter("resPnum");
		String resCategory = request.getParameter("resCategory");
		
		ResVO res = new ResVO();
		res.setResId(resId);
		res.setResName(resName);
		res.setResAddr(resAddr);
		res.setResPnum(resPnum);
		res.setResTime(resTime);
		res.setResHomepage(resHomepage);
		res.setResHoliday(resHoliday);
		res.setResCategory(resCategory);
		
		ResDAO dao = ResDAO.getInstance();
		int resultCode = dao.resUpdate(res);
		if(resultCode==1) {
			System.out.println("업데이트 서비스 완료!");
		} else {
			System.out.println("업데이트 서비스 실패!");
		}
		
		
	}
}
