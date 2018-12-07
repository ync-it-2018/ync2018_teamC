package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface SignupDAO {

	public void insertMember(SignupVO signVO);
	
	
}
