package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.CategorySmallVO;

public interface CategorySmallService {
	//소분류 카테고리 생성
	public void createCategorySmall(CategorySmallVO vo);

	//소분류 카테고리 목록
	public List<CategorySmallVO> SmalllistAll() throws Exception;

	//소분류 카테고리 상세
	public CategorySmallVO readCategorySmall(int pSmall) throws Exception;

	//소분류 카테고리 수정
	public void updateCategorySmall(CategorySmallVO vo) throws Exception;

	//소분류 카테고리 삭제
	public void deleteCategorySmall(int pSmall) throws Exception;
}
