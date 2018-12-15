package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AnoticeVO;
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

	@Override
	public ReviewVO readReview(Integer rNum) throws Exception {
		return session.selectOne(namespace + ".readReview", rNum);
	}
	//페이징
	@Override
	public List<ReviewVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<ReviewVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}
	
	@Override
	public int countPaging(Criteria cri)throws Exception {
		
		return session.selectOne(namespace + ".countPaging", cri);
	}

}