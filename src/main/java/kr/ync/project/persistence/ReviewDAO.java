package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.ReviewVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface ReviewDAO {

	public void insertReview(ReviewVO reviewVO);

	public List<ReviewVO> listReview() throws Exception;

	public List<ReviewVO> reviewList(ReviewVO reviewVO);
	
	//리뷰 상세
	public ReviewVO readReview(Integer rNum) throws Exception;

	public List<ReviewVO> rlistAll() throws Exception;

	public ReviewVO read(Integer rNum) throws Exception;

	public void insertReviewPhoto(ReviewVO reviewVO);

}
