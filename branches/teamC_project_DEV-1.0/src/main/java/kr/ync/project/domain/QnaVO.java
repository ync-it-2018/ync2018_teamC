package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class QnaVO {
	private Integer Q_NUM;
	private String Q_TITLE;
	private String Q_CONTENTS;
	private String Q_CHECK;
	private Date Q_UP_DATE;
	private String M_ID;
	private Integer Q_CATEGORY_NUM;
	
	public int getpNum() {
		return Q_NUM;
	}

	public void setpNum(int Q_NUM) {
		this.Q_NUM = Q_NUM;
	}

	public String getpTitle() {
		return Q_TITLE;
	}

	public void setpTitle(String Q_TITLE) {
		this.Q_TITLE = Q_TITLE;
	}

	public String getpContents() {
		return Q_CONTENTS;
	}

	public void setpContents(String Q_CONTENTS) {
		this.Q_CONTENTS = Q_CONTENTS;
	}

	public String getpCheck() {
		return Q_CHECK;
	}

	public void setpCheck(String Q_CHECK) {
		this.Q_CHECK = Q_CHECK;
	}

	public Date getpdate() {
		return Q_UP_DATE;
	}

	public void setpdate(Date Q_UP_DATE) {
		this.Q_UP_DATE = Q_UP_DATE;
	}

	public String getpmid() {
		return M_ID;
	}

	public void setpmid(String M_ID) {
		this.M_ID = M_ID;
	}

	public int getCategorynum() {
		return Q_CATEGORY_NUM;
	}

	public void setCategorynum(int Q_CATEGORY_NUM) {
		this.Q_CATEGORY_NUM = Q_CATEGORY_NUM;
	}

	

}