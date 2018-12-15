package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*@Getter
@Setter
@ToString*/
public class ReviewVO {
	
	//리뷰
	private Integer rNum;		//리뷰 글 번호
	private String rTitle;		//리뷰 글 제목
	private Date rDate;			//리뷰 작성 날짜
	private Integer rViewCount;	//리뷰 뷰 카운트
	private String rContents;	//리뷰 내용
	private String mId;			//리뷰 작성자 아이디
	private String pCode;		//상품코드
	private String pName;		//상품 명
	private String pImageSrc;	//상품 이미지 경로
	
	public Integer getrNum() {
		return rNum;
	}
	public void setrNum(Integer rNum) {
		this.rNum = rNum;
	}
	
	public Integer getrViewCount() {
		return rViewCount;
	}
	public void setrViewCount(Integer rViewCount) {
		this.rViewCount = rViewCount;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public String getrContents() {
		return rContents;
	}
	public void setrContents(String rContents) {
		this.rContents = rContents;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getpImageSrc() {
		return pImageSrc;
	}

	public void setpImageSrc(String pImageSrc) {
		this.pImageSrc = pImageSrc;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}

}