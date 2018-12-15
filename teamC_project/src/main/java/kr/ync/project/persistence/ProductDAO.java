package kr.ync.project.persistence;

import java.util.List;
import java.util.Map;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;

public interface ProductDAO {

	//상품 목록
	public List<ProductVO> listAll() throws Exception;

	// 상품상품상세
	// public List<ProductVO> readProduct(String pCode) throws Exception;
	public ProductVO readProduct(String pCode) throws Exception;

	//상품 상품등록
	public void createProduct(ProductVO vo) throws Exception;

	//상품 상품수정
	public void updateProduct(ProductVO vo) throws Exception;

	// 상품삭제
	public void deleteProduct(String pCode) throws Exception;

	// 프론트 상품목록
	public List<ProductVO> listProduct(Map<String, Object> param) throws Exception;

	public List<ProductVO> productList(ProductVO productVO);

	public ProductVO read(String pCode) throws Exception;

	// 베스트 상품목록
	public List<ProductVO> best() throws Exception;

	// 신상상품목록
	public List<ProductVO> newArrival() throws Exception;

	// 어드민 페이징
	public List<AnoticeVO> listPage(int page) throws Exception;

	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	
	//추천상품목록
	public List<ProductVO> recommend()throws Exception;
}
