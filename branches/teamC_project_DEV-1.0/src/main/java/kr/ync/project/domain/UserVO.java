package kr.ync.project.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	private String M_ID;
	private String M_PWD;
	private String M_NAME;
	private int POINT;
}