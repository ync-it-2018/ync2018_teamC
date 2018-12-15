package kr.ync.project.admin.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.admin.domain.MLevelVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.EventDAO;
import kr.ync.project.admin.persistence.MLevelDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class MLevelServiceImpl implements MLevelService {
 
    @Inject
    private MLevelDAO dao;
 
	//등급 목록
	@Override
	public List<MLevelVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	//등급 상세
	@Override
	public MLevelVO read(Integer mlCode) throws Exception {
		return dao.read(mlCode);
	}

	//등급 작성
	@Override
	public void createMLevel(MLevelVO vo) throws Exception {
		dao.createMLevel(vo);
	}

	//등급 수정
	@Override
	public void updateMLevel(MLevelVO vo) throws Exception {
		dao.updateMLevel(vo);
	}

	//등급 삭제
	@Override
	public void deleteMLevel(Integer mlCode) throws Exception {
		dao.deleteMLevel(mlCode);
	}
	
	//등급 페이징
	@Override
	public List<MLevelVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}



}

