package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;

public interface AnoticeDAO {
	//목록
	public List<AnoticeVO> listAll() throws Exception;
	//상세
	public AnoticeVO readNotice(Integer nCode) throws Exception;
	//작성
	public void createNotice(AnoticeVO vo) throws Exception;
	//수정
	public void updateNotice(AnoticeVO vo) throws Exception;
	//삭제
	public void deleteNotice(Integer nCode) throws Exception;
	
	//페이징
	public List<AnoticeVO> listPage(int page) throws Exception;
	
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception;
	
	//프론트 목록
	public List<AnoticeVO> flistAll() throws Exception;
}
