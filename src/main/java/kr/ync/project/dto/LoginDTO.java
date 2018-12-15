package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
	
	//회원 로그인
	private String mId;		//회원 아이디
	private String mPwd;	//회원 비밀번호
	private boolean useCookie;	//로그인 쿠키

}
