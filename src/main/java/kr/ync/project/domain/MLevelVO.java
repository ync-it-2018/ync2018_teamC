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
public class MLevelVO {

	private Integer mlCode;
	private String lName;
	private Integer lPoint;
	public Integer getmlCode() {
		return mlCode;
	}
	public void setmlCode(Integer mlCode) {
		this.mlCode = mlCode;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public Integer getlPoint() {
		return lPoint;
	}
	public void setlPoint(Integer lPoint) {
		this.lPoint = lPoint;
	}
	
	

	

}
