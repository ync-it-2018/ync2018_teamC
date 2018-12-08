package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface AdminSignupDAO {

	public void insertadminMember(AdminSignupVO adminsignVO);
	
	
}
