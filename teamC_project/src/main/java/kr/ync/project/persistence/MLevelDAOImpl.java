package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class MLevelDAOImpl implements MLevelDAO {
 
    @Inject
    private SqlSession session;
    
    private static String namespace = "kr.ync.project.mapper.MLevelMapper";
    
	//사용자 등급 목록
	@Override
	public List<MLevelVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	//사용자 등급 상세
	@Override
	public MLevelVO read(Integer mlCode) throws Exception {
		return session.selectOne(namespace + ".read", mlCode);
	}

	//사용자 등급 작성
	@Override
	public void createMLevel(MLevelVO vo) throws Exception {
		session.insert(namespace + ".createMLevel", vo);
	}

	//사용자 등급 수정
	@Override
	public void updateMLevel(MLevelVO vo) throws Exception {
		session.update(namespace + ".updateMLevel", vo);
	}

	//사용자 등급 삭제
	@Override
	public void deleteMLevel(Integer mlCode) throws Exception {
		session.delete(namespace + ".deleteMLevel", mlCode);
	}
	
	//사용자 등급 페이징
	@Override
	public List<MLevelVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<MLevelVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}
}