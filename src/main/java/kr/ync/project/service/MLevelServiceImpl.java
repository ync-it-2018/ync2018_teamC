package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.EventDAO;
import kr.ync.project.persistence.MLevelDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class MLevelServiceImpl implements MLevelService {
 
    @Inject
    private MLevelDAO dao;
 
    public void insertMLevel(MLevelVO mlevelVO) {
        dao.insertMLevel(mlevelVO);
    }

	@Override
	public List<MLevelVO> listMLevel() throws Exception {
		// TODO Auto-generated method stub
		return dao.listMLevel();
	}

	@Override
	public List<MLevelVO> MLevelList(MLevelVO mlevelVO) {
		// TODO Auto-generated method stub
		return dao.MLevelList(mlevelVO);
	}
	
	@Override
	public List<MLevelVO> listAll() throws Exception {
		return dao.listAll();
	}

	
	@Override
	public MLevelVO read(Integer lCode) throws Exception {

		return dao.read(lCode);
	}


}

