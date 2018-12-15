package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.CategoryMiddleVO;

public interface CategoryMiddleDAO {
	//증분류 카테고리 생성
	public void createCategoryMiddle(CategoryMiddleVO vo);

	//증분류 카테고리  목록
	public List<CategoryMiddleVO> MiddlelistAll() throws Exception;

	//증분류 카테고리  상세
	public CategoryMiddleVO readCategoryMiddle(int pMiddle) throws Exception;

	//증분류 카테고리  수정
	public void updateCategoryMiddle(CategoryMiddleVO vo) throws Exception;

	//증분류 카테고리  삭제
	public void deleteCategoryMiddle(int pMiddle) throws Exception;
}
