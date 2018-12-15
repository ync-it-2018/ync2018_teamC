package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;

public interface ReplyDAO {

	//댓글 목록
	public List<ReplyVO> list(Integer bno) throws Exception;

	//댓글 등록
	public void create(ReplyVO vo) throws Exception;

	//댓글 수정
	public void update(ReplyVO vo) throws Exception;

	//댓글 삭제
	public void delete(Integer rno) throws Exception;
	
	//ㅍㅔ이징
	public int getBno(Integer rno) throws Exception;
	
	public List<ReplyVO> listPage(Integer bno, Criteria cri) throws Exception;

	public int count(Integer bno) throws Exception;
}
