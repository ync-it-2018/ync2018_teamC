package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//@Getter
//@Setter
//@ToString
public class UserVO {

	private String mId;
	private String mPwd;
	private String mName;
	private String mAddress;
	private String mTel;
	private String mEmail;
	private int mLevelCode;
	
//	private String M_ADDRESS;
//	private String M_TEL;
//	private String M_EMAIL;
//	
	private int point;
//	private Integer LEVEL_CODE;
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmTel() {
		return mTel;
	}
	public void setmmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public int getmLevelCode() {
		return mLevelCode;
	}
	public void setmLevelCode(int mLevelCode) {
		this.mLevelCode = mLevelCode;
	}

	
}
