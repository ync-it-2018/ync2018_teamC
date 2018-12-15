package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//@Getter
//@Setter
//@ToString
public class UserVO {

	//사용자
	private String mId;			//사용자 아이디
	private String mPwd;		//사용자 비밀번호
	private String mName;		//사용자 이름
	private String mAddress;	//사용자 주소
	private String mTel;		//사용자 전화번호
	private String mEmail;		//사용자 이메일
	private int mLevelCode;		//사용자 등급코드
	
//	private String M_ADDRESS;
//	private String M_TEL;
//	private String M_EMAIL;
//	
	private int mPoint;
//	private Integer LEVEL_CODE;
	public String getmId() {
		return mId;
	}
	public int getmPoint() {
		return mPoint;
	}
	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
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
