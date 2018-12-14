package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class QnaVO {
	private Integer qNum; 		//Qna글번호
	private String qTitle; 		//Qna글제목
	private String qContents; 	//Qna글내용
	private String qCheck; 		//Qna답변여부
	private Date qUpDate; 		//Qna등록날짜
	private String mID;			//Qna등록회원아이디
	private Integer qCategoryNum; //Qna카테고리넘버
	private String qCategoryName; //Qna카테고리이름
	
	public String getqCategoryName() {
		return qCategoryName;
	}
	public void setqCategoryName(String qCategoryName) {
		this.qCategoryName = qCategoryName;
	}
	public Date getqADate() {
		return qADate;
	}
	public void setqADate(Date qADate) {
		this.qADate = qADate;
	}
	public String getaID() {
		return aID;
	}
	public void setaID(String aID) {
		this.aID = aID;
	}
	public String getqAContents() {
		return qAContents;
	}
	public void setqAContents(String qAContents) {
		this.qAContents = qAContents;
	}
	private Date qADate;
	private String aID;
	private String qAContents;
	
	
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