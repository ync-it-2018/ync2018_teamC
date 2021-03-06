package kr.ync.project.admin.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.admin.domain.AUserVO;
import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.admin.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserDAO {

	// 관리자 로그인
	public AUserVO alogin(ALoginDTO dto) throws Exception;

	// 관리자 로그인 유지
	public void keepALogin(String aID, String sessionId, Date next);

	public AUserVO checkAUserWithSessionKey(String value);

	// 어드민 - 회원 리스트 출력
	public List<UserVO> userlist() throws Exception;

	// 어드민 - 회원 삭제
	public void deleteMember(String mId) throws Exception;

	// 어드민 - 회원 정보
	public UserVO readMember(String mId) throws Exception;

	// 어드민 페이징
	public List<UserVO> listPage(int page) throws Exception;

	public List<UserVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

}
