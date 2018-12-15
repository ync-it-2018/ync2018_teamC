package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.CategorySmallVO;

@Repository
public class CategorySmallDAOImpl implements CategorySmallDAO{

	@Inject
    private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.categoryMapper";

	@Override
	public void createCategorySmall(CategorySmallVO vo) {
		session.insert(namespace + ".createCategorySmall", vo);
	}

	@Override
	public List<CategorySmallVO> SmalllistAll() throws Exception {
		return session.selectList(namespace + ".SmalllistAll");
	}

	@Override
	public CategorySmallVO readCategorySmall(int pSmall) throws Exception {
		return session.selectOne(namespace + ".readCategorySmall", pSmall);
	}

	@Override
	public void updateCategorySmall(CategorySmallVO vo) throws Exception {
		session.update(namespace + ".updateCategorySmall", vo);
	}

	@Override
	public void deleteCategorySmall(int pSmall) throws Exception {
		session.delete(namespace + ".deleteCategorySmall", pSmall);
	}

}
