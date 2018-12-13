package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.CategoryBigVO;
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
	public void keepALogin(String aID, String sessionId, Date next) throws Exception {

		dao.keepALogin(aID, sessionId, next);

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

	@Override
	public List<UserVO> userlist() throws Exception {
		// TODO Auto-generated method stub
		return dao.userlist();
	}
	//어드민 - 회원 삭제
	@Override
	public void deleteMember(String mId) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteMember(mId);
	}

	@Override
	public UserVO readMember(String mId) throws Exception {
		// TODO Auto-generated method stub
		return dao.readMember(mId);
	}
	
}
