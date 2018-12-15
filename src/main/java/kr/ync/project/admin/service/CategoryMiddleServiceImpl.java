package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.domain.CategoryMiddleVO;
import kr.ync.project.admin.persistence.CategoryBigDAO;
import kr.ync.project.admin.persistence.CategoryMiddleDAO;

@Service
public class CategoryMiddleServiceImpl implements CategoryMiddleService{
	@Inject
	private CategoryMiddleDAO dao;
	
	@Override
	public void insert(CategoryMiddleVO categorymiddleVO) {
		dao.insert(categorymiddleVO);
	}
	@Override
	public List<CategoryMiddleVO> mlistAll() throws Exception {
		return dao.mlistAll();
	}

}
