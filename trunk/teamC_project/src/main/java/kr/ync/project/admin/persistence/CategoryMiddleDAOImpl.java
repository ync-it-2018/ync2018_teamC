package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.CategoryMiddleVO;
import kr.ync.project.admin.domain.CategoryMiddleVO;

@Repository
public class CategoryMiddleDAOImpl implements CategoryMiddleDAO{

	@Inject
    private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.categoryMapper";

	//증분류 카테고리 생성
	@Override
	public void createCategoryMiddle(CategoryMiddleVO vo) {
		session.insert(namespace + ".createCategoryMiddle", vo);
	}
	
	//증분류 카테고리 목록
	@Override
	public List<CategoryMiddleVO> MiddlelistAll() throws Exception {
		return session.selectList(namespace + ".MiddlelistAll");
	}

	//증분류 카테고리 상세
	@Override
	public CategoryMiddleVO readCategoryMiddle(int pMiddle) throws Exception {
		return session.selectOne(namespace + ".readCategoryMiddle", pMiddle);
	}

	//증분류 카테고리 수정
	@Override
	public void updateCategoryMiddle(CategoryMiddleVO vo) throws Exception {
		session.update(namespace + ".updateCategoryMiddle", vo);
	}

	//증분류 카테고리 삭제
	@Override
	public void deleteCategoryMiddle(int pMiddle) throws Exception {
		session.delete(namespace + ".deleteCategoryMiddle", pMiddle);
	}
	
	
	 
}
