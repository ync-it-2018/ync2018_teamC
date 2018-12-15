package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.CategorySmallVO;
import kr.ync.project.persistence.CategorySmallDAO;

@Service
public class CategorySmallServiceImpl implements CategorySmallService{

	@Inject
	private CategorySmallDAO dao;
	
	@Override
	public void insert(CategorySmallVO categorysmallVO) {
		dao.insert(categorysmallVO);
	}

	@Override
	public List<CategorySmallVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public CategorySmallVO read(int pSmall) throws Exception {
		return dao.read(pSmall);
	}

}
