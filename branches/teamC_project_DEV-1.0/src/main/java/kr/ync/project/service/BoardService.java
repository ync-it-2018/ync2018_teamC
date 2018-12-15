package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;

public interface BoardService {

	//게시판 댓글
	public void regist(BoardVO board) throws Exception;

	//게시판 상세
	public BoardVO read(Integer bno) throws Exception;

	//게시판 수정
	public void modify(BoardVO board) throws Exception;

	//게시판 삭제
	public void remove(Integer bno) throws Exception;

	//게시판 목록
	public List<BoardVO> listAll() throws Exception;

	//게시판 페이징
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;
//
//	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//
//	public int listSearchCount(SearchCriteria cri) throws Exception;
//	
	public List<String> getAttach(Integer bno)throws Exception;

}
