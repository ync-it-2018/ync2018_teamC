package kr.ync.project.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	private ProductDAO dao;

	//상품 목록
	@Override
	public List<ProductVO> listAll() throws Exception {
		return dao.listAll();
	}

	//상품 상세
	/*
	 * @Override public List<ProductVO> readProduct(String pCode) throws Exception {
	 * return dao.readProduct(pCode); }
	 */
	@Override
	public ProductVO readProduct(String pCode) throws Exception {
		return dao.readProduct(pCode);
	}

	//상품 등록
	@Override
	public void createProduct(ProductVO vo) throws Exception {
		dao.createProduct(vo);
	}

	//상품 수정
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		dao.updateProduct(vo);
	}

	//상품 삭제
	@Override
	public void deleteProduct(String pCode) throws Exception {
		dao.deleteProduct(pCode);
	}

///////////////////////////////////////////	
	// 프론트 상품리스트
	@Override
	public List<ProductVO> listProduct(Map<String, Object> param) throws Exception {
		return dao.listProduct(param);
	}

	public List<ProductVO> productList(ProductVO productVO) {
		return dao.productList(productVO);

	}

	// 제품상세보기
	@Override
	public ProductVO read(String pCode) throws Exception {
		return dao.read(pCode);
	}

	// 베스트 상품
	@Override
	public List<ProductVO> best() throws Exception {
		// TODO Auto-generated method stub
		return dao.best();
	}

	// 신상
	@Override
	public List<ProductVO> newArrival() throws Exception {
		// TODO Auto-generated method stub
		return dao.newArrival();
	}
	// 페이징
	@Override
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<ProductVO> recommend() throws Exception {
		
		return dao.recommend();
	}

}
