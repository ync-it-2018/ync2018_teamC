package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String M_ID, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
	
	
}
