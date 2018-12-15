package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.domain.CategoryMiddleVO;

@Repository
public class CategoryMiddleDAOImpl implements CategoryMiddleDAO{

	@Inject
    private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.categoryMapper";
	
	@Override
	public void insert(CategoryMiddleVO categorymiddle) {
		session.insert("middlecreate", categorymiddle);
	}

	@Override
	public List<CategoryMiddleVO> mlistAll() throws Exception {
		return session.selectList(namespace + ".mlistAll");
	}

	@Override
	public CategoryMiddleVO read(int pMiddle) throws Exception {
		return session.selectOne(namespace + ".read", pMiddle);
	}
	 
}
