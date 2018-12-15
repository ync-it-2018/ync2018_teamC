package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.admin.persistence.AnoticeDAO;
import lombok.extern.slf4j.Slf4j;

@Service
public class AnoticeServiceImpl implements AnoticeService {

	@Inject
	private AnoticeDAO dao;

	//공지사항 목록
	@Override
	public List<AnoticeVO> listAll() throws Exception {
		return dao.listAll();
	}

	//공지사항 상세
	@Override
	public AnoticeVO readNotice(Integer nCode) throws Exception {
		return dao.readNotice(nCode);
	}

	//공지사항 작성
	@Override
	public void createNotice(AnoticeVO vo) throws Exception {
		dao.createNotice(vo);
	}

	//공지사항 수정
	@Override
	public void updateNotice(AnoticeVO vo) throws Exception {
		dao.updateNotice(vo);
	}

	//공지사항 삭제
	@Override
	public void deleteNotice(Integer nCode) throws Exception {
		dao.deleteNotice(nCode);
	}
	
	//공지사항 페이징
	@Override
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}
	

	@Override
	public List<AnoticeVO> flistAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.flistAll();
	}

	
}
