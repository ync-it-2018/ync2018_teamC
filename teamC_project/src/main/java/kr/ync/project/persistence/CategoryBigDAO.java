package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.CategoryBigVO;

public interface CategoryBigDAO {
	public void insert(CategoryBigVO categorybig);
	
	public List<CategoryBigVO> listAll() throws Exception;
}
