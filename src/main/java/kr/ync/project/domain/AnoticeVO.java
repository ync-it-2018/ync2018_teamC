package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AnoticeVO {
	private Integer N_CODE;
	private String N_TITLE;
	private String N_UP_DATE;
	private String N_CONTENTS;
	private Integer N_VIEW_COUNT;
	

}