package kr.ync.project.admin.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ALoginDTO {
	
	private String aID; 		//관리자아이디
	private String aPWD;		//관리자비밀번호
	private boolean useCookie;	//쿠키유지

}
