package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.CategorySmallVO;

public interface CategorySmallService {
	// 카테고리 등록
	public void insert(CategorySmallVO categorysmallVO);

	// 카테고리 출력
	public List<CategorySmallVO> listAll() throws Exception;

	public CategorySmallVO read(int pSmall) throws Exception;
}
