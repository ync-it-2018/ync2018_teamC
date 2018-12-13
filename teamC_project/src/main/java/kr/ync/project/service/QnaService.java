package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;

public interface QnaService {
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
	public List<QnaVO> listCriteria(Criteria cri) throws Exception;


}
