package kr.ync.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.CategoryBig;
import kr.ync.project.persistence.CategoryBigDAO;

@Service
public class CategoryBigServiceImpl implements CategoryBigService{
	@Inject
	private CategoryBigDAO dao;
	@Override
	public void insert(CategoryBig categorybigVO) {
		dao.insert(categorybigVO);
	}

}
