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
	private Integer rNum;
	private String rTitle;
	private Date rDate;
	private Integer rViewCount;
	private String rContents;
	private String mId;
	private String pCode;
	
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
	
	
	
	
	
	
	

}