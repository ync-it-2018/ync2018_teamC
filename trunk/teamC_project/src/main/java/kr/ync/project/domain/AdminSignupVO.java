package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
/*@ToString*/
public class AdminSignupVO {

	//관리자회원가입
	private String A_ID;		//관리자아이디
	private String A_PWD;		//관리자비밀번호
	private String A_NAME;		//관리자이름
	private String A_TEL;		//관리자전화번호
	private String A_EMAIL;		//관리자이메일
	
}
