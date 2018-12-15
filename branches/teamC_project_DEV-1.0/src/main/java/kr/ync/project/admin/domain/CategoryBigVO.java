package kr.ync.project.admin.domain;

/*@Getter
@Setter
@ToString*/
public class CategoryBigVO {
	
	//카테고리
	private int pBig;		//대분류 코드
	private String pBigName;//대분류 이름

	public int getpBig() {
		return pBig;
	}

	public void setpBig(int pBig) {
		this.pBig = pBig;
	}

	public String getpBigName() {
		return pBigName;
	}

	public void setpBigName(String pBigName) {
		this.pBigName = pBigName;
	}

	
	
	
}
