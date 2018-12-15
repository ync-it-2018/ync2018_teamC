package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.admin.domain.QnaVO;

public interface QnaService {
	// Qna 목록
	public List<QnaVO> listAll() throws Exception;

	// Qna 상세
	public QnaVO read(Integer qNum) throws Exception;

	// Qna 작성
	public void createQna(QnaVO vo) throws Exception;

	// Qna 수정
	public void updateQna(QnaVO vo) throws Exception;

	// Qna 삭제
	public void deleteQna(Integer qNum) throws Exception;

	// 페이징
	public List<QnaVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

}
