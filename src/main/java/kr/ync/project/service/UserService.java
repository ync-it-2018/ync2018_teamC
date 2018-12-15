package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserService {

	//사용자 로그인
	public UserVO login(LoginDTO dto) throws Exception;

	//사용자 로그인 유지
	public void keepLogin(String mId, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value);
	
	//사용자 회원가입
	public UserVO join(LoginDTO dto) throws Exception;

	/*public Object userlist();

	
*/
	
}
