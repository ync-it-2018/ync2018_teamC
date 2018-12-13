package kr.ync.project.domain;

import java.util.Date;

/*@Getter
@Setter
@ToString*/
public class AnoticeVO {
	private Integer nCode;
	private String nTitle;
	private Date nUpDate;
	private String nContents;
	private Integer nViewCount;
	
	public Integer getnCode() {
		return nCode;
	}
	public void setnCode(Integer nCode) {
		this.nCode = nCode;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public Date getnUpDate() {
		return nUpDate;
	}
	public void setnUpDate(Date nUpDate) {
		this.nUpDate = nUpDate;
	}
	public String getnContents() {
		return nContents;
	}
	public void setnContents(String nContents) {
		this.nContents = nContents;
	}
	public Integer getnViewCount() {
		return nViewCount;
	}
	public void setnViewCount(Integer nViewCount) {
		this.nViewCount = nViewCount;
	}
	
	
	
	
	
	
	

}