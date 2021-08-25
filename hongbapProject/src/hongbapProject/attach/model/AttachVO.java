package hongbapProject.attach.model;

public class AttachVO {
	private int aid ;
	private String atitle;
	private String acontent;
	private int assessment;
	private int resId;
	private String awriter;
	
	
	
	
	public String getAwriter() {
		return awriter;
	}


	public void setAwriter(String awriter) {
		this.awriter = awriter;
	}


	@Override
	public String toString() {
		return "AttachVO [aid=" + aid + ", atitle=" + atitle + ", acontent=" + acontent + ", assessment=" + assessment
				+ ", resId=" + resId + ", awriter=" + awriter + "]";
	}
	
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public int getAssessment() {
		return assessment;
	}
	public void setAssessment(int assessment) {
		this.assessment = assessment;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	
	
}
