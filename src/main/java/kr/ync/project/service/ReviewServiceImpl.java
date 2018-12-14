package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.AnoticeVO;
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

	public void insertReview(ReviewVO reviewVO) {
		dao.insertReview(reviewVO);
	}

	@Override
	public List<ReviewVO> listReview() throws Exception {
		// TODO Auto-generated method stub
		return dao.listReview();
	}

	@Override
	public List<ReviewVO> reviewList(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return dao.reviewList(reviewVO);
	}

	@Override
	public List<ReviewVO> rlistAll() throws Exception {
		return dao.rlistAll();
	}

	@Override
	public ReviewVO read(Integer rNum) throws Exception {

		return dao.read(rNum);
	}

	@Override
	public void insertReviewPhoto(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		dao.insertReviewPhoto(reviewVO);
	}


}
