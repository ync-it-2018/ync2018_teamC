package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface MLevelDAO {

	//목록
		public List<MLevelVO> listAll() throws Exception;
		//상세
		public MLevelVO read(Integer mlCode) throws Exception;
		//작성
		public void createMLevel(MLevelVO vo) throws Exception;
		//수정
		public void updateMLevel(MLevelVO vo) throws Exception;
		//삭제
		public void deleteMLevel(Integer mlCode) throws Exception;
		
		//페이징
		public List<MLevelVO> listPage(int page) throws Exception;
		
		public List<MLevelVO> listCriteria(Criteria cri) throws Exception;

}
