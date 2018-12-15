package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.CategoryBigVO;
import kr.ync.project.admin.persistence.CategoryBigDAO;

@Service
public class CategoryBigServiceImpl implements CategoryBigService{
	@Inject
	private CategoryBigDAO dao;

	//대분류 카테고리 생성
	@Override
	public void createCategoryBig(CategoryBigVO vo) {
		dao.createCategoryBig(vo);
	}

	//대분류 카테고리 리스트
	@Override
	public List<CategoryBigVO> BiglistAll() throws Exception {
		return dao.BiglistAll();
	}

	//대분류 카테고리 상세
	@Override
	public CategoryBigVO readCategoryBig(int pBig) throws Exception {
		return dao.readCategoryBig(pBig);
	}

	//대분류 카테고리 수정
	@Override
	public void updateCategoryBig(CategoryBigVO vo) throws Exception {
		dao.updateCategoryBig(vo);
	}

	//대분류 카테고리 삭제
	@Override
	public void deleteCategoryBig(int pBig) throws Exception {
		dao.deleteCategoryBig(pBig);
	}
	
	

}
