package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.CategorySmallVO;

public interface CategorySmallDAO {
	
public void insert(CategorySmallVO categorysmall);
	
	public List<CategorySmallVO> listAll() throws Exception;
	
	public CategorySmallVO read(int pSmall) throws Exception;
}
