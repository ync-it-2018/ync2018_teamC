package kr.ync.project.admin.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.admin.domain.AUserVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.admin.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserService {

	// 관리자 로그인
	public AUserVO alogin(ALoginDTO dto) throws Exception;

	// 관리자 로그인 유지
	public void keepALogin(String aID, String sessionId, Date next) throws Exception;

	// 관리자 로그인확인
	public AUserVO checkALoginBefore(String value);

	// 관리자 회원가입(등록)
	public AUserVO Ajoin(ALoginDTO dto) throws Exception;

	// 어드민 - 회원 리스트 출력
	public List<UserVO> userlist() throws Exception;

	// 어드민 - 회원 삭제
	public void deleteMember(String mId) throws Exception;

	// 어드민 - 회원 상세
	public UserVO readMember(String mId) throws Exception;

	// 페이징
	public List<UserVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

}
