package kr.ync.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;
import kr.ync.project.persistence.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO dao;

	// 글 등록 시 첨부파일 table에 첨부파일 정보를 등록 시켜야 한다.
	// 따라서 글 등록(insert), 첨부파일 등록(여러개의 insert) 모두
	// 정상 등록 되었을때만 처리하기위해 하나의 Transaction으로 묶는다.
	// ajax방식으로 upload 시 미리 파일을 upload 후 DB에 insert를 하게되는데
	// DB insert 오류 시 하나의 Transaction으로 묶여 DB insert는 되지 않지만
	// 기존에 upload된 파일은 지워지지 않는 로직상의 오류가 존재한다.
	//@Transactional
	
	//목록
	@Override
	public List<QnaVO> listAll() throws Exception {
		return dao.listAll();
	}
	
	//상세
	@Override
	public QnaVO read(Integer qNum) throws Exception {

		return dao.read(qNum);
	}
	
	//작성
	@Override
	public void createQna(QnaVO vo) throws Exception {
		dao.createQna(vo);
	}

	//수정
	@Override
	public void updateQna(QnaVO vo) throws Exception {
		dao.updateQna(vo);
	}

	//삭제
	@Override
	public void deleteQna(Integer qNum) throws Exception {
		dao.deleteQna(qNum);
	}
	
	//페이징
	@Override
	public List<QnaVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}


}
