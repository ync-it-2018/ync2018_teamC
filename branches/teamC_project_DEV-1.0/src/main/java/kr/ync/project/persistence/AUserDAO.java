package kr.ync.project.persistence;

import java.util.Date;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserDAO {

	public AUserVO alogin(ALoginDTO dto) throws Exception;

	public void keepALogin(String A_ID, String sessionId, Date next);

	public AUserVO checkAUserWithSessionKey(String value);
	
	
}
