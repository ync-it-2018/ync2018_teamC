package kr.ync.project.service;

import java.util.Date;

import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface SignupService {

	public void insertMember(SignupVO signVO);
	
}
