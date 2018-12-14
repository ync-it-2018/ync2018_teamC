package kr.ync.project.persistence;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;


@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.QnaMapper";

	//관리자 Qna 목록
	@Override
	public List<QnaVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	//관리자 Qna 상세
	@Override
	public QnaVO read(Integer qNum) throws Exception {
		return session.selectOne(namespace + ".read", qNum);
	}


	//관리자 Qna 작성
	@Override
	public void createQna(QnaVO vo) throws Exception {
		session.insert(namespace + ".createQna", vo);
	}

	//관리자 Qna 수정
	@Override
	public void updateQna(QnaVO vo) throws Exception {
		session.update(namespace + ".updateQna", vo);
	}

	//관리자 Qna 삭제
	@Override
	public void deleteQna(Integer qNum) throws Exception {
		session.delete(namespace + ".deleteQna", qNum);
	}
	
	//관리자 Qna 페이징
	@Override
	public List<QnaVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<QnaVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}

	
}
