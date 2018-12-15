package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;

public interface ReplyService {

	//댓글 등록
	public void addReply(ReplyVO vo) throws Exception;

	//댓글 목록
	public List<ReplyVO> listReply(Integer bno) throws Exception;

	//댓글 수정
	public void modifyReply(ReplyVO vo) throws Exception;

	//댓글 삭제
	public void removeReply(Integer rno) throws Exception;
	
	//댓글 페이징
	public List<ReplyVO> listReplyPage(Integer bno, Criteria cri) throws Exception;

	public int count(Integer bno) throws Exception;
}
