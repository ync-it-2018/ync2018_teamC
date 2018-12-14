package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;
public interface QnaDAO {

	//관리자 Qna 목록
	public List<QnaVO> listAll() throws Exception;
	//관리자 Qna 상세
	public QnaVO read(Integer qNum) throws Exception;
	//관리자 Qna 작성
	public void createQna(QnaVO vo) throws Exception;
	//관리자 Qna 수정
	public void updateQna(QnaVO vo) throws Exception;
	//관리자 Qna 삭제
	public void deleteQna(Integer qNum) throws Exception;
	
	//관리자 Qna 페이징
	public List<QnaVO> listPage(int page) throws Exception;
	
	public List<QnaVO> listCriteria(Criteria cri) throws Exception;
	

}
