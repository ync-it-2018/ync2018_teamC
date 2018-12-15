package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
/*@ToString*/
public class SignupVO {

	//사용자 회원가입
	private String M_ID;		//사용자아이디
	private String M_PWD;		//사용자 패스워드
	private String M_NAME;		//사용자 이름
	private String M_ADDRESS;	//사용자 주소
	private String M_TEL;		//사용자 전화번호
	private String M_EMAIL;		//사용자 이메일
	
	private Integer POINT;		//사용자 포인트
	private Integer LEVEL_CODE;	//사용자 등급
	
}
