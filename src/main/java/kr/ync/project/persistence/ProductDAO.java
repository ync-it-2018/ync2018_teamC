package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.ProductVO;

public interface ProductDAO {

	// 목록
	public List<ProductVO> listAll() throws Exception;

	// 상품상세
	//public List<ProductVO> readProduct(String pCode) throws Exception;	
	public ProductVO readProduct(String pCode) throws Exception;

	// 상품등록
	public void createProduct(ProductVO vo) throws Exception;

	// 상품수정
	public void updateProduct(ProductVO vo) throws Exception;

	// 상품삭제
	public void deleteProduct(String pCode) throws Exception;

	
/////////////////////////////////////
	
	// 프론트 상품목록
	public List<ProductVO> listProduct() throws Exception;
	
	public List<ProductVO> productList(ProductVO productVO);
	
	public ProductVO read(String pCode) throws Exception;

}
