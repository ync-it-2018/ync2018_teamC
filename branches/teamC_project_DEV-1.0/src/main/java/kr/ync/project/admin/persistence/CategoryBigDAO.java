package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.CategoryBigVO;

public interface CategoryBigDAO {
	public void insert(CategoryBigVO categorybig);
	
	public List<CategoryBigVO> listAll() throws Exception;
	
	public CategoryBigVO read(int pBig) throws Exception;
}
