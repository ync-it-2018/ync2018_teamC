package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.ReviewVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.reviewMapper";

	@Override
	public void insertReview(ReviewVO reviewVO) {
		session.insert("insertReview", reviewVO);
	}

	@Override
	public List<ReviewVO> listReview() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectReview");
	}

	@Override
	public List<ReviewVO> reviewList(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectReview", reviewVO);
	}

	@Override
	public List<ReviewVO> rlistAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".rlistAll");
	}

	@Override
	public ReviewVO read(Integer rNum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", rNum);
	}

	@Override
	public void insertReviewPhoto(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		session.insert("insertReviewPhoto", reviewVO);
	}

}