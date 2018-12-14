package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;
import kr.ync.project.domain.SearchCriteria;

public interface QnaDAO {

	//목록
	public List<QnaVO> listAll() throws Exception;
	//상세
	public QnaVO read(Integer qNum) throws Exception;
	//작성
	public void createQna(QnaVO vo) throws Exception;
	//수정
	public void updateQna(QnaVO vo) throws Exception;
	//삭제
	public void deleteQna(Integer qNum) throws Exception;
	
	//페이징
	public List<QnaVO> listPage(int page) throws Exception;
	
	public List<QnaVO> listCriteria(Criteria cri) throws Exception;
	

}
