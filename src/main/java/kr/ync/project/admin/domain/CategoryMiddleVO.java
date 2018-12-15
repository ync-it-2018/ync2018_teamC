package kr.ync.project.admin.domain;

public class CategoryMiddleVO {
	
	//카테로기
	private int pBig;			//대분류코드
	private int pMiddle;		//중분류코트
	private String pMiddleName;	//중분류 이름

	public int getpBig() {
		return pBig;
	}

	public void setpBig(int pBig) {
		this.pBig = pBig;
	}
	
	public int getpMiddle() {
		return pMiddle;
	}

	public void setpMiddle(int pMiddle) {
		this.pMiddle = pMiddle;
	}

	public String getpMiddleName() {
		return pMiddleName;
	}

	public void setpMiddleName(String pMiddleName) {
		this.pMiddleName = pMiddleName;
	}
	
	
}
