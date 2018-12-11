package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class UserVO {

	private String mId;
	private String mPwd;
	private String mName;
//	private String M_ADDRESS;
//	private String M_TEL;
//	private String M_EMAIL;
//	
	private int point;
//	private Integer LEVEL_CODE;
//	
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
