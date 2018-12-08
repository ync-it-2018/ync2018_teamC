package kr.ync.project.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.CategoryBig;

@Repository
public class CategoryBigDAOImpl implements CategoryBigDAO{

	@Inject
    private SqlSession session;
	
	@Override
	public void insert(CategoryBig categorybig) {
		session.insert("insert", categorybig);
	}
	 
}
