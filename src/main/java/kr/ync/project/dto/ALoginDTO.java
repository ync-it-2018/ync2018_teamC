package kr.ync.project.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ALoginDTO {
	
	private String aID;
	private String aPWD;
	private boolean useCookie;

}
