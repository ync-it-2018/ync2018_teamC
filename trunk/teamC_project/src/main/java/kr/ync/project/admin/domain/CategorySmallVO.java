package kr.ync.project.admin.domain;

public class CategorySmallVO {
	
	//카테고리
	private int pSmall;			//소분류코드
	private String pSmallName;	//소분류이름
	private int pMiddle;		//중분류코드

	public int getpSmall() {
		return pSmall;
	}

	public void setpSmall(int pSmall) {
		this.pSmall = pSmall;
	}

	public String getpSmallName() {
		return pSmallName;
	}

	public void setpSmallName(String pSmallName) {
		this.pSmallName = pSmallName;
	}

	public int getpMiddle() {
		return pMiddle;
	}

	public void setpMiddle(int pMiddle) {
		this.pMiddle = pMiddle;
	}
	
}
