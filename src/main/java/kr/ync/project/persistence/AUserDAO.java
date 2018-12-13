package kr.ync.project.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserDAO {

	public AUserVO alogin(ALoginDTO dto) throws Exception;

	public void keepALogin(String aID, String sessionId, Date next);

	public AUserVO checkAUserWithSessionKey(String value);

	//어드민 - 회원 리스트 출력
	public List<UserVO> userlist() throws Exception;

	public void deleteMember(String mId) throws Exception;

	public UserVO readMember(String mId) throws Exception;
	
}
