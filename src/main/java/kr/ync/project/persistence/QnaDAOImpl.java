package kr.ync.project.persistence;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.QnaVO;


@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.QnaMapper";


	@Override
	public List<QnaVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	
}
