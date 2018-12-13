package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.persistence.AnoticeDAO;
import lombok.extern.slf4j.Slf4j;

@Service
public class AnoticeServiceImpl implements AnoticeService {

	@Inject
	private AnoticeDAO dao;

	//목록
	@Override
	public List<AnoticeVO> listAll() throws Exception {
		return dao.listAll();
	}

	//상세
	@Override
	public AnoticeVO readNotice(Integer nCode) throws Exception {
		return dao.readNotice(nCode);
	}

	//작성
	@Override
	public void createNotice(AnoticeVO vo) throws Exception {
		dao.createNotice(vo);
	}

	//수정
	@Override
	public void updateNotice(AnoticeVO vo) throws Exception {
		dao.updateNotice(vo);
	}

	//삭제
	@Override
	public void deleteNotice(Integer nCode) throws Exception {
		dao.deleteNotice(nCode);
	}
	
	//페이징
	@Override
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	
}