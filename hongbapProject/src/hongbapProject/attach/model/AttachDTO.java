package hongbapProject.attach.model;

import java.util.List;

import hongbapProject.board.model.BoardVO;
import hongbapProject.restaurant.model.ResVO;

public class AttachDTO {
		private int total;
		private int currentPage;
		private List<AttachVO> attachList;
		private int startPage;
		private int endPage;
		private int totalPages;
		
		// 전체 글 개수, 현재 페이지, 페이징된 글 목록을 받아서 
		// 나머지 정보를 얻어냅니다.
		
		public AttachDTO(int total,
							int currentPage,
							List<AttachVO> attachList) {
			this.total = total;
			this.currentPage = currentPage;
			this.attachList = attachList;
		
		//아래부터 위 3개를 토대로 가공해서 나머지 변수를 채웁니다.
		// 글이 없는 경우 페이지및 버튼 자체가 필요없음
		if(total == 0) {
			this.totalPages = 0;
			this.startPage =0;
			this.endPage = 0;
		} else {
			// 게시글 총 개수를 이용해 전체 페이지 개수부터 구하기
			this.totalPages = total/10;
			if(this.total % 10 >0) {
				// 만약 나눴을때 10개로 딱떨어지지 않으면
				// 마지막에 페이지를 하나 더 추가해야함
				this.totalPages +=1; 
			}
		}
		}
		public int getTotal() {
			return total; // 총 글 개수 리턴
		}
		
		public boolean hasNoBoard() {
			return total == 0; // 게시물 표기가 불가능할때 true 리턴
		}
		
		public boolean hasBoard() {
			return total > 0; // 게시물이 있을때 true 리턴
		}
		
		public int getTotalPages() {
			return totalPages; // 페이지의 총 개수 리턴
		}
		
		
		public int getStartPage() {
			return startPage; // 해당 페이지 그룹의 시작번호 리턴
		}
		
		public int getEndPage() {
			return endPage; // 해당 페이지 그룹의 끝번호 리턴
		}

		@Override
		public String toString() {
			return "AttachDTO [total=" + total + ", currentPage=" + currentPage + ", attachList=" + attachList
					+ ", startPage=" + startPage + ", endPage=" + endPage + ", totalPages=" + totalPages + "]";
		}
	}

