package kr.ync.project.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.AUserDAO;
import kr.ync.project.persistence.UserDAO;

@Service
public class AUserServiceImpl implements AUserService {

	@Autowired
	private AUserDAO dao;

	@Override
	public AUserVO alogin(ALoginDTO dto) throws Exception {

		return dao.alogin(dto);
	}

	@Override
	public void keepALogin(String A_ID, String sessionId, Date next) throws Exception {

		dao.keepALogin(A_ID, sessionId, next);

	}

	@Override
	public AUserVO checkALoginBefore(String value) {

		return dao.checkAUserWithSessionKey(value);
	}

	@Override
	public AUserVO Ajoin(ALoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*public int insert(User user) {
        return dao.insert(user);
    }*/
}
