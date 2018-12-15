package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface SignupDAO {

	//사용자 회원가입
	public void insertMember(SignupVO signVO);
	
	
}
