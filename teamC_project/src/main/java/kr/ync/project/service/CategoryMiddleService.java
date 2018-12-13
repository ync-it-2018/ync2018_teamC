package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.CategoryMiddleVO;

public interface CategoryMiddleService {
	//카테고리 등록
	public void insert (CategoryMiddleVO categorymiddleVO);
	//카테고리 출력
	public List<CategoryMiddleVO> mlistAll() throws Exception;
	
	
}
