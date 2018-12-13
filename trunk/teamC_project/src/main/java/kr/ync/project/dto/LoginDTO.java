package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
	
	private String mId;
	private String mPwd;
	private boolean useCookie;

}
