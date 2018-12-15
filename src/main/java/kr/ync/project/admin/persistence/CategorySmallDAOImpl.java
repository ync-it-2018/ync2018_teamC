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
	
	//소분류 카테고리 생성
	@Override
	public void createCategorySmall(CategorySmallVO vo) {
		session.insert(namespace + ".createCategorySmall", vo);
	}
	//소분류 카테고리 목록
	@Override
	public List<CategorySmallVO> SmalllistAll() throws Exception {
		return session.selectList(namespace + ".SmalllistAll");
	}
	//소분류 카테고리 상세
	@Override
	public CategorySmallVO readCategorySmall(int pSmall) throws Exception {
		return session.selectOne(namespace + ".readCategorySmall", pSmall);
	}
	//소분류 카테고리 수정
	@Override
	public void updateCategorySmall(CategorySmallVO vo) throws Exception {
		session.update(namespace + ".updateCategorySmall", vo);
	}
	//소분류 카테고리 삭제
	@Override
	public void deleteCategorySmall(int pSmall) throws Exception {
		session.delete(namespace + ".deleteCategorySmall", pSmall);
	}

}
