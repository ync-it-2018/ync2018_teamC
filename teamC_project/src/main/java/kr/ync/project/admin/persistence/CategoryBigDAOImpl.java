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

	//대분류 카테고리 생성
	@Override
	public void createCategoryBig(CategoryBigVO vo) {
		session.insert(namespace + ".createCategoryBig", vo);
	}

	//대분류 카테고리 리스트
	@Override
	public List<CategoryBigVO> BiglistAll() throws Exception {
		return session.selectList(namespace + ".BiglistAll");
	}
	
	//대분류 카테고리 상세
	@Override
	public CategoryBigVO readCategoryBig(int pBig) throws Exception {
		return session.selectOne(namespace + ".readCategoryBig", pBig);
	}

	//대분류 카테고리 수정
	@Override
	public void updateCategoryBig(CategoryBigVO vo) throws Exception {
		session.update(namespace + ".updateCategoryBig", vo);
	}

	//대분류 카테고리 삭제
	@Override
	public void deleteCategoryBig(int pBig) throws Exception {
		session.delete(namespace + ".deleteCategoryBig", pBig);
	}
	
	
	 
}
