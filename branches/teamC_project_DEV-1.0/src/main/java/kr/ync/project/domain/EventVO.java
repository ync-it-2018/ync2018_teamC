package kr.ync.project.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
/*
@Getter
@Setter
@ToString*/
public class EventVO {
	
	//이벤트 
	private Integer eNum;		//이벤트 글 번호
	private String eName;		//이벤트 글 제목
	private Date eStartdate;	//이벤트  시작 날짜
	private Date eEnddate;		//이벤트 종료 날짜
	private String eDetail;		//이벤트 상세
	private String eLink;		//이벤트 링크 경로
	private String eImageSrc; //이미지 경로 
	
	private String eImageIndex; //이미지 인덱스
	
	public Integer geteNum() {
		return eNum;
	}

	public void seteNum(Integer eNum) {
		this.eNum = eNum;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public Date geteStartdate() {
		return eStartdate;
	}

	public void seteStartdate(Date eStartdate) {
		this.eStartdate = eStartdate;
	}

	public Date geteEnddate() {
		return eEnddate;
	}

	public void seteEnddate(Date eEnddate) {
		this.eEnddate = eEnddate;
	}

	public String geteDetail() {
		return eDetail;
	}

	public void seteDetail(String eDetail) {
		this.eDetail = eDetail;
	}

	public String geteLink() {
		return eLink;
	}

	public void seteLink(String eLink) {
		this.eLink = eLink;
	}

	public String geteImageSrc() {
		return eImageSrc;
	}

	public void seteImageSrc(String eImageSrc) {
		this.eImageSrc = eImageSrc;
	}
	
	public String geteImageIndex() {
		return eImageIndex;
	}

	public void seteImageIndex(String eImageIndex) {
		this.eImageIndex = eImageIndex;
	}

}
