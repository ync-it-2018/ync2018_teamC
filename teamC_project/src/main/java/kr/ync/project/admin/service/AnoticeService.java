package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;

public interface AnoticeService {
	//공지사항 목록
	public List<AnoticeVO> listAll() throws Exception;
	//공지사항 상세
	public AnoticeVO readNotice(Integer nCode) throws Exception;
	//공지사항 작성
	public void createNotice(AnoticeVO vo) throws Exception;
	//공지사항 수정
	public void updateNotice(AnoticeVO vo) throws Exception;
	//공지사항 삭제
	public void deleteNotice(Integer nCode) throws Exception;
	
	//공지사항 페이징
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception;
	
	public int listCountCriteria(Criteria cri)throws Exception;
	
	//공지사항 프론트 목록
	public List<AnoticeVO> flistAll() throws Exception;
}
