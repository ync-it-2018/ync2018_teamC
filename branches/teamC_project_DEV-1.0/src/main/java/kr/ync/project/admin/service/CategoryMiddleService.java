package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.CategoryMiddleVO;

public interface CategoryMiddleService {
	// 생성
	public void createCategoryMiddle(CategoryMiddleVO vo);

	// 목록
	public List<CategoryMiddleVO> MiddlelistAll() throws Exception;

	// 상세
	public CategoryMiddleVO readCategoryMiddle(int pMiddle) throws Exception;

	// 수정
	public void updateCategoryMiddle(CategoryMiddleVO vo) throws Exception;

	// 삭제
	public void deleteCategoryMiddle(int pMiddle) throws Exception;

}
