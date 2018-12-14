package kr.ync.project.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class AUserDAOImpl implements AUserDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.AuserMapper";

	// 관리자 로그인
	@Override
	public AUserVO alogin(ALoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".alogin", dto);
	}

	// 관리자 로그인 유지
	@Override
	public void keepALogin(String aID, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("aID", aID);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepALogin", paramMap);

	}

	@Override
	public AUserVO checkAUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkAUserWithSessionKey", value);
	}

	// 어드민 - 회원 리스트 출력
	@Override
	public List<UserVO> userlist() throws Exception {
		return session.selectList(namespace + ".userlist");
	}

	// 어드민 - 회원 삭제
	@Override
	public void deleteMember(String mId) throws Exception {
		session.delete(namespace + ".deleteMember", mId);

	}

	// 어드민 - 회원 상세
	@Override
	public UserVO readMember(String mId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".readMember", mId);
	}

	// 페이징
	@Override
	public List<UserVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<UserVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

}
