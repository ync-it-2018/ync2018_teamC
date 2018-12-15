package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.ReviewVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.EventDAO;
import kr.ync.project.persistence.ReviewDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO dao;

	//리뷰 등록
	public void insertReview(ReviewVO reviewVO) {
		dao.insertReview(reviewVO);
	}

	//리뷰 리스트
	@Override
	public List<ReviewVO> listReview() throws Exception {
		// TODO Auto-generated method stub
		return dao.listReview();
	}
	//리뷰 리스트
	@Override
	public List<ReviewVO> reviewList(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return dao.reviewList(reviewVO);
	}
	//리뷰 리스트
	@Override
	public List<ReviewVO> rlistAll() throws Exception {
		return dao.rlistAll();
	}
	//리뷰 상세
	@Override
	public ReviewVO read(Integer rNum) throws Exception {

		return dao.read(rNum);
	}
	//리뷰 사진 등록
	@Override
	public void insertReviewPhoto(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		dao.insertReviewPhoto(reviewVO);
	}
	//리뷰 상세
	@Override
	public ReviewVO readReview(Integer rNum) throws Exception {
		return dao.readReview(rNum);
	}

	// 페이징
	@Override
	public List<ReviewVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

}
