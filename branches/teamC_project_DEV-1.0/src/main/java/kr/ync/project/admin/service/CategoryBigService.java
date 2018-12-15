package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.CategoryBigVO;

public interface CategoryBigService {
	//대분류 카테고리 생성
	public void createCategoryBig(CategoryBigVO vo);

	//대분류 카테고리  목록
	public List<CategoryBigVO> BiglistAll() throws Exception;

	//대분류 카테고리  상세
	public CategoryBigVO readCategoryBig(int pBig) throws Exception;

	//대분류 카테고리  수정
	public void updateCategoryBig(CategoryBigVO vo) throws Exception;

	//대분류 카테고리  삭제
	public void deleteCategoryBig(int pBig) throws Exception;

}
