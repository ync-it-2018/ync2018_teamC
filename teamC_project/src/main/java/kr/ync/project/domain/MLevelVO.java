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

	//회원등급관리
	private Integer mlCode;		//등급번호
	private String lName;		//등급이름
	private Integer lPoint;		//등급별적립률
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
	@Override
	public String toString() {
		System.out.println(mlCode);
		return "MLevelVO [mlCode=" + mlCode + ", lName=" + lName + ", lPoint=" + lPoint + "]";
	}
	
	

	

}
