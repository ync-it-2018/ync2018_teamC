package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface AdminSignupDAO {

	//관리자 회원가입(등록)
	public void insertadminMember(AdminSignupVO adminsignVO);
	
	
}
