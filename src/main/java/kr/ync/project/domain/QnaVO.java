package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class QnaVO {
	private Integer qNum;
	private String qTitle;
	private String qContents;
	private String qCheck;
	private Date qUpDate;
	private String mID;
	private Integer qCategoryNum;
	
	public Integer getqNum() {
		return qNum;
	}
	public void setqNum(Integer qNum) {
		this.qNum = qNum;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContents() {
		return qContents;
	}
	public void setqContents(String qContents) {
		this.qContents = qContents;
	}
	public String getqCheck() {
		return qCheck;
	}
	public void setqCheck(String qCheck) {
		this.qCheck = qCheck;
	}
	public Date getqUpDate() {
		return qUpDate;
	}
	public void setqUpDate(Date qUpDate) {
		this.qUpDate = qUpDate;
	}
	public String getmID() {
		return mID;
	}
	public void setmID(String mID) {
		this.mID = mID;
	}
	public Integer getqCategoryNum() {
		return qCategoryNum;
	}
	public void setqCategoryNum(Integer qCategoryNum) {
		this.qCategoryNum = qCategoryNum;
	}
	


	

}