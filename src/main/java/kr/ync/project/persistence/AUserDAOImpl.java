package kr.ync.project.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class AUserDAOImpl implements AUserDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.AuserMapper";

	@Override
	public AUserVO alogin(ALoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".alogin", dto);
	}

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
}
