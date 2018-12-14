package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AUserVO {

	//관리자로그인
	private String aID;		//관리자아이디
	private String aPWD;	//관리자비밀번호

}
