package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.CategoryBigVO;

public interface CategoryBigService {
	//카테고리 등록
	public void insert (CategoryBigVO categorybigVO);
	//카테고리 출력
	public List<CategoryBigVO> listAll() throws Exception;
	
	public CategoryBigVO read(int pBig) throws Exception;
	
	
}
