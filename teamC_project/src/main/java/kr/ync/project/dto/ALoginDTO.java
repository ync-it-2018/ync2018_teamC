package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ALoginDTO {
	
	private String A_ID;
	private String A_PWD;
	private boolean useCookie;

}
