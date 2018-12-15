package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.CategorySmallVO;

public interface CategorySmallDAO {

	// 생성
	public void createCategorySmall(CategorySmallVO vo);

	// 목록
	public List<CategorySmallVO> SmalllistAll() throws Exception;

	// 상세
	public CategorySmallVO readCategorySmall(int pSmall) throws Exception;

	// 수정
	public void updateCategorySmall(CategorySmallVO vo) throws Exception;

	// 삭제
	public void deleteCategorySmall(int pSmall) throws Exception;
}
