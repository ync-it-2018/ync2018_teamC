package kr.ync.project.service;

import java.util.Date;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.ALoginDTO;
import kr.ync.project.dto.LoginDTO;

public interface AUserService {

	public AUserVO alogin(ALoginDTO dto) throws Exception;

	public void keepALogin(String A_ID, String sessionId, Date next) throws Exception;

	public AUserVO checkALoginBefore(String value);
	
	public AUserVO Ajoin(ALoginDTO dto) throws Exception;
}
