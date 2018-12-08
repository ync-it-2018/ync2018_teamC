package kr.ync.project.service;

import java.util.Date;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface AdminSignupService {

	public void insertadminMember(AdminSignupVO adminsignVO);
	
}
