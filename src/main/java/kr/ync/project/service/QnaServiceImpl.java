package kr.ync.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.QnaVO;
import kr.ync.project.persistence.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO dao;

	// Qna 목록
	@Override
	public List<QnaVO> listAll() throws Exception {
		return dao.listAll();
	}

	// Qna 상세
	@Override
	public QnaVO read(Integer qNum) throws Exception {

		return dao.read(qNum);
	}

	// Qna 작성
	@Override
	public void createQna(QnaVO vo) throws Exception {
		dao.createQna(vo);
	}

	// Qna 수정
	@Override
	public void updateQna(QnaVO vo) throws Exception {
		dao.updateQna(vo);
	}

	// Qna 삭제
	@Override
	public void deleteQna(Integer qNum) throws Exception {
		dao.deleteQna(qNum);
	}

	// 페이징
	@Override
	public List<QnaVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

}
