package kr.ync.project.admin.domain;

import java.util.Date;

/*@Getter
@Setter
@ToString*/
public class AnoticeVO {
	
	//관리자 공지사항
	private Integer nCode;		//글번호
	private String nTitle;		//공지사항 제목
	private Date nUpDate;		//공지사항 등록 날짜
	private String nContents;	//공지사항 내용
	private Integer nViewCount;	//공지사항 뷰 카운트
	
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