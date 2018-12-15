package kr.ync.project.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	//사용자 로그인
	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	//사용자 로그인 유지
	@Override
	public void keepLogin(String mId, String sessionId, Date next) throws Exception {

		dao.keepLogin(mId, sessionId, next);

	}

	@Override
	public UserVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}

	//사용자 회원가입
	@Override
	public UserVO join(LoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
