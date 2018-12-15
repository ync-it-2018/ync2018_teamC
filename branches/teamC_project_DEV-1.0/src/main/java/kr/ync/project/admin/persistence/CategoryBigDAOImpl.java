package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.CategoryBigVO;

@Repository
public class CategoryBigDAOImpl implements CategoryBigDAO{

	@Inject
    private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.categoryMapper";
	
	@Override
	public void insert(CategoryBigVO categorybig) {
		session.insert("bigcreate", categorybig);
	}

	@Override
	public List<CategoryBigVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public CategoryBigVO read(int pBig) throws Exception {
		return session.selectOne(namespace + ".read", pBig);
	}
	 
}
