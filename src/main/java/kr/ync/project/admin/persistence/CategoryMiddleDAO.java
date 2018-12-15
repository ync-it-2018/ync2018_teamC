package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.domain.CategoryMiddleVO;

public interface CategoryMiddleDAO {
	public void insert(CategoryMiddleVO categorymiddle);
	
	public List<CategoryMiddleVO> mlistAll() throws Exception;
	
	public CategoryMiddleVO read(int pMiddle) throws Exception;
}
