package hongbapProject.attach.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hongbapProject.attach.model.AttachDAO;
import hongbapProject.attach.model.AttachDTO;
import hongbapProject.attach.model.AttachVO;
import hongbapProject.menu.model.MenuDAO;
import hongbapProject.restaurant.model.ResDAO;


public class AttachPagingService implements IAttachService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		HttpSession session = null;
		session = request.getSession();
		
		// page 파라미터에 있던 값을 가져옵니다.(get방식)
				String strPage = request.getParameter("page");
				String strResid = (String)session.getAttribute("resId");
				
				int resId = 1;
				if(strResid!=null) {
					resId=Integer.parseInt(strResid);
				}
				
				// 가져온 데이터는 String 타입이므로 int 타입으로 전환
				// null이 저장된 상황에는 int로 바꿔줄 수없음
				// 파라미터가 없을 때 들어갈 기본 페이지는 1페이지임 
				int page =1;
				if(strPage!=null) {
					page=Integer.parseInt(strPage);
				}
				
				// DAO 생성
				AttachDAO dao = AttachDAO.getInstance();
				
				// 현재 보고 있는 페이지의 전체 글 가져오기
				List<AttachVO> attachList =dao.getAllAttachByResId(resId,(page-1)*10);
				
				// 얻어온 글 전체 개수와 현재 조회중인 페이지 정보를 DTO에 넘겨줌
				
				// DTO의 역할은 페이지 하단에 링크만들 정보를 계산하는 것.
				
				// 전체 행 개수 가져오기
				int countAttach = dao.getCountAttach();
				
				// 해당 식당의 평점 평균값 가져오기
				double avgPoint = dao.getAvgAssessment(resId);
				
				AttachDTO pageDTO = new AttachDTO(countAttach,page,attachList);
						
				System.out.println("링크버튼 정보 : "+ pageDTO);
				
				
				
				// ****** 댓글(평점)이 20개 이상이면서, 별점 평균이 3점 미만일 경우 레스토랑 db 삭제 실행
				if(countAttach>=20&&avgPoint<3) {
					ResDAO rDao = ResDAO.getInstance();
					MenuDAO mDao = MenuDAO.getInstance();
					// 레스토랑  DB 삭제 위해 참조키 설정 되어있는 메뉴 DB 우선적으로 삭제
					mDao.menuDelete(resId);
					// 그 후 레스토랑 DB 삭제
					rDao.resDelete(resId);
					
					System.out.println("댓글, 평점 갯수가 20개 이상이면서 별점이 평균 이하이므로 DB에서 삭제합니다.");
					
					
				}
				
				// 포워딩하기위해 적재하기
				request.setAttribute("attachList", attachList);
				request.setAttribute("pageDTO", pageDTO);
				request.setAttribute("avgPoint", avgPoint);
			}
		}
