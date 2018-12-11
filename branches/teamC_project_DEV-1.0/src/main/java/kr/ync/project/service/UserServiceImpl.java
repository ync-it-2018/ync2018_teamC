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

//	@Autowired
	@Inject
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void keepLogin(String M_ID, String sessionId, Date next) throws Exception {

		dao.keepLogin(M_ID, sessionId, next);

	}

	@Override
	public UserVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}

	@Override
	public UserVO join(LoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*public int insert(User user) {
        return dao.insert(user);
    }*/
}
