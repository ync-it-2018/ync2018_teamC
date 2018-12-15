package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.CategorySmallVO;

@Repository
public class CategorySmallDAOImpl implements CategorySmallDAO{

	@Inject
    private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.categoryMapper";
	
	@Override
	public void insert(CategorySmallVO categorysmall) {
		session.insert("smallcreate", categorysmall);
	}

	@Override
	public List<CategorySmallVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public CategorySmallVO read(int pSmall) throws Exception {
		return session.selectOne(namespace + ".read", pSmall);
	}

}
