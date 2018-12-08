package kr.ync.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.TestVO;

@Repository
public class AnoticeDAOImpl implements AnoticeDAO {
	
	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.AnoticeMapper";


	@Override
	public List<AnoticeVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	
}
