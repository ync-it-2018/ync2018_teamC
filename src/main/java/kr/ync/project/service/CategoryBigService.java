package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.CategoryBigVO;

public interface CategoryBigService {
	public void insert (CategoryBigVO categorybigVO);
	
	public List<CategoryBigVO> listAll() throws Exception;
}
