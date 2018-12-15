package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.CategoryMiddleVO;
import kr.ync.project.admin.persistence.CategoryMiddleDAO;

@Service
public class CategoryMiddleServiceImpl implements CategoryMiddleService {
	@Inject
	private CategoryMiddleDAO dao;

	// 중분류 카테고리 생성
	@Override
	public void createCategoryMiddle(CategoryMiddleVO vo) {
		dao.createCategoryMiddle(vo);
	}

	// 중분류 카테고리 리스트
	@Override
	public List<CategoryMiddleVO> MiddlelistAll() throws Exception {
		return dao.MiddlelistAll();
	}

	// 중분류 카테고리 상세
	@Override
	public CategoryMiddleVO readCategoryMiddle(int pMiddle) throws Exception {
		return dao.readCategoryMiddle(pMiddle);
	}

	// 중분류 카테고리 수정
	@Override
	public void updateCategoryMiddle(CategoryMiddleVO vo) throws Exception {
		dao.updateCategoryMiddle(vo);
	}

	// 중분류 카테고리 삭제
	@Override
	public void deleteCategoryMiddle(int pMiddle) throws Exception {
		dao.deleteCategoryMiddle(pMiddle);
	}

}
