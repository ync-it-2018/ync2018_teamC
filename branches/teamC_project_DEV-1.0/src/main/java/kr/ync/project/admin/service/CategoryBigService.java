package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.CategoryBigVO;

public interface CategoryBigService {
	// 생성
	public void createCategoryBig(CategoryBigVO vo);

	// 목록
	public List<CategoryBigVO> BiglistAll() throws Exception;

	// 상세
	public CategoryBigVO readCategoryBig(int pBig) throws Exception;

	// 수정
	public void updateCategoryBig(CategoryBigVO vo) throws Exception;

	// 삭제
	public void deleteCategoryBig(int pBig) throws Exception;

}
