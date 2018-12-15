package kr.ync.project.service;

import java.util.List;
import java.util.Map;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;

public interface ProductService {

	//상품 목록
	public List<ProductVO> listAll() throws Exception;

	//상품 상세
	// public List<ProductVO> readProduct(String pCode) throws Exception;
	public ProductVO readProduct(String pCode) throws Exception;

	//상품 작성
	public void createProduct(ProductVO vo) throws Exception;

	//상품 수정
	public void updateProduct(ProductVO vo) throws Exception;

	//상품 삭제
	public void deleteProduct(String pCode) throws Exception;

	// 프론트 상품 목록

	public List<ProductVO> listProduct(Map<String, Object> param) throws Exception;

	public List<ProductVO> productList(ProductVO productVO);

	// 제품상세보기
	public ProductVO read(String pCode) throws Exception;

	// 베스트 상품
	public List<ProductVO> best() throws Exception;

	// 신상
	public List<ProductVO> newArrival() throws Exception;

	// 페이징
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;
	
	//추천상품
	public List<ProductVO> recommend()throws Exception;
}
