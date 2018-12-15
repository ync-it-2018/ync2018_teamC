package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.CategorySmallVO;
import kr.ync.project.admin.persistence.CategorySmallDAO;

@Service
public class CategorySmallServiceImpl implements CategorySmallService {

	@Inject
	private CategorySmallDAO dao;

	// 소분류 카테고리 생성
	@Override
	public void createCategorySmall(CategorySmallVO vo) {
		dao.createCategorySmall(vo);
	}

	// 소분류 카테고리 리스트
	@Override
	public List<CategorySmallVO> SmalllistAll() throws Exception {
		return dao.SmalllistAll();
	}

	// 소분류 카테고리 상세
	@Override
	public CategorySmallVO readCategorySmall(int pSmall) throws Exception {
		return dao.readCategorySmall(pSmall);
	}

	// 소분류 카테고리 수정
	@Override
	public void updateCategorySmall(CategorySmallVO vo) throws Exception {
		dao.updateCategorySmall(vo);
	}

	// 소분류 카테고리 삭제
	@Override
	public void deleteCategorySmall(int pSmall) throws Exception {
		dao.deleteCategorySmall(pSmall);
	}

}
