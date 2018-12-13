package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.persistence.CategoryBigDAO;

@Service
public class CategoryBigServiceImpl implements CategoryBigService{
	@Inject
	private CategoryBigDAO dao;
	
	@Override
	public void insert(CategoryBigVO categorybigVO) {
		dao.insert(categorybigVO);
	}
	@Override
	public List<CategoryBigVO> listAll() throws Exception {
		return dao.listAll();
	}
	@Override
	public CategoryBigVO read(Integer pBig) throws Exception {
		return dao.read(pBig);
	}

}
