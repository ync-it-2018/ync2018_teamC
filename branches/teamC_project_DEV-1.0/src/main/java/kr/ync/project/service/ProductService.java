package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.SearchCriteria;

public interface ProductService {
	//상품 목록

	public List<ProductVO> listProduct() throws Exception;

	public List<ProductVO> productList(ProductVO productVO);

	//상품 상세
	public ProductVO detailProduct(String p_code);
	//상품수정
	public void updateProduct(ProductVO vo);
	//상품삭제
	public void deleteProduct(String p_code);
	
	public void insertProduct(ProductVO vo) throws Exception;
	
	
	public List<ProductVO> listAll() throws Exception;

	public List<ProductVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<ProductVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public ProductVO read(String pCode) throws Exception;
}
