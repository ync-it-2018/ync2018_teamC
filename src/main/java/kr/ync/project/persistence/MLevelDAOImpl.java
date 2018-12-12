package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
 
    @Override
    public void insertMLevel(MLevelVO mlevelVO) {
        session.insert("insertMLevel",mlevelVO);
    }

	@Override
	public List<MLevelVO> listMLevel() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectEvent");
	}

	@Override
	public List<MLevelVO> MLevelList(MLevelVO mlevelVO) {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectEvent", mlevelVO);
	}

	@Override
	public List<MLevelVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public MLevelVO read(Integer lCode) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", lCode);
	}
}