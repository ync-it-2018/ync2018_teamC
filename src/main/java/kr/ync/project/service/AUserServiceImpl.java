package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.AUserDAO;
import kr.ync.project.persistence.UserDAO;

@Service
public class AUserServiceImpl implements AUserService {

	@Autowired
	private AUserDAO dao;

	// 관리자 로그인
	@Override
	public AUserVO alogin(ALoginDTO dto) throws Exception {

		return dao.alogin(dto);
	}

	// 관리자 로그인유지
	@Override
	public void keepALogin(String aID, String sessionId, Date next) throws Exception {

		dao.keepALogin(aID, sessionId, next);

	}

	// 관리자 로그인확인
	@Override
	public AUserVO checkALoginBefore(String value) {

		return dao.checkAUserWithSessionKey(value);
	}

	// 관리자 회원가입(등록)
	@Override
	public AUserVO Ajoin(ALoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	// 어드민 - 회원 리스트
	@Override
	public List<UserVO> userlist() throws Exception {
		// TODO Auto-generated method stub
		return dao.userlist();
	}

	// 어드민 - 회원 삭제
	@Override
	public void deleteMember(String mId) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteMember(mId);
	}

	// 어드민 -회원 정보
	@Override
	public UserVO readMember(String mId) throws Exception {
		// TODO Auto-generated method stub
		return dao.readMember(mId);
	}

	// 페이징
	@Override
	public List<UserVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

}
