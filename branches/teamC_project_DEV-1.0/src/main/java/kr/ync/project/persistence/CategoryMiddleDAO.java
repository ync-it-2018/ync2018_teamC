package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.CategoryMiddleVO;

public interface CategoryMiddleDAO {
	public void insert(CategoryMiddleVO categorymiddle);
	
	public List<CategoryMiddleVO> mlistAll() throws Exception;
	
	public CategoryMiddleVO read(int pMiddle) throws Exception;
}
