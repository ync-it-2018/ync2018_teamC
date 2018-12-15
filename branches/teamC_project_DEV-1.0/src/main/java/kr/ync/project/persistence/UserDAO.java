package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {

	//사용자 로그인
	public UserVO login(LoginDTO dto) throws Exception;

	//사용자 로그인 유지
	public void keepLogin(String mId, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
	
	
}
