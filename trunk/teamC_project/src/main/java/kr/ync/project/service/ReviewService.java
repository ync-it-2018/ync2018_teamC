package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.ReviewVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface ReviewService {

	//리뷰 리스트
	public List<ReviewVO> listReview() throws Exception;
	//리뷰 리스트
	public List<ReviewVO> reviewList(ReviewVO reviewVO);

	// 리뷰 상세보기
	public ReviewVO readReview(Integer rNum) throws Exception;
	//리뷰 등록
	public void insertReview(ReviewVO reviewVO);
	//리뷰 리스트
	public List<ReviewVO> rlistAll() throws Exception;
	//리뷰 상세
	public ReviewVO read(Integer rNum) throws Exception;
	//리뷰 사진 등록
	public void insertReviewPhoto(ReviewVO reviewVO);

	//리뷰 페이징
	public List<ReviewVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

}
