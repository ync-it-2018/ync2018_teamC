package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserService {

	public AUserVO alogin(ALoginDTO dto) throws Exception;

	public void keepALogin(String aID, String sessionId, Date next) throws Exception;

	public AUserVO checkALoginBefore(String value);
	
	public AUserVO Ajoin(ALoginDTO dto) throws Exception;
	
	//어드민 - 회원 리스트 출력
	public List<UserVO> userlist() throws Exception;
	//어드민 - 회원 삭제
	public void deleteMember(String mId) throws Exception;
	//어드민 - 회원 상세 
	public UserVO readMember(String mId) throws Exception;
}
