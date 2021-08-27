package hongbapProject.attach.model;

public class AttachVO {
	private int aid ;
	private String acheck;
	private String acontent;
	private int assessment;
	private int resId;
	private String awriter;
	
	
	
	
	public String getAcheck() {
		return acheck;
	}


	public void setAcheck(String acheck) {
		this.acheck = acheck;
	}


	public String getAwriter() {
		return awriter;
	}


	public void setAwriter(String awriter) {
		this.awriter = awriter;
	}


	@Override
	public String toString() {
		return "AttachVO [aid=" + aid + ", acheck=" + acheck + ", acontent=" + acontent + ", assessment=" + assessment
				+ ", resId=" + resId + ", awriter=" + awriter + "]";
	}
	
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
