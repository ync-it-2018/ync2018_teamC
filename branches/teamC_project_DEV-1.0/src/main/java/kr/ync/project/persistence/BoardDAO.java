package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;

public interface BoardDAO {

	//게시판 등록
	public void create(BoardVO vo) throws Exception;

	//게시판 상세
	public BoardVO read(Integer bno) throws Exception;

	//게시판 수정
	public void update(BoardVO vo) throws Exception;

	//게시판 삭제
	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	//게시판 목록
	public List<BoardVO> listAll() throws Exception;

	//게시판 페이징
	public List<BoardVO> listPage(int page) throws Exception;
  
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	

	public int countPaging(Criteria cri) throws Exception;
   
//	//use for dynamic SQL
//	// 검색이 적용된 Query 결과 List
//	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
//	
//	// 검색이 적용된 Query 결과 Count
//	public int listSearchCount(SearchCriteria cri)throws Exception;
//	
//	public void updateViewCnt(Integer bno)throws Exception;
//	
//	// 첨부파일 관련 method
//	public void addAttach(String fullName) throws Exception;
//
//	public List<String> getAttach(Integer bno) throws Exception;
//
//	public void deleteAttach(Integer bno) throws Exception;
//
//	public void replaceAttach(String fullName, Integer bno) throws Exception;

}
