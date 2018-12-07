package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
/*@ToString*/
public class SignupVO {

	private String M_ID;
	private String M_PWD;
	private String M_NAME;
	private String M_ADDRESS;
	private String M_TEL;
	private String M_EMAIL;
	
	private Integer POINT;
	private Integer LEVEL_CODE;
	
}
