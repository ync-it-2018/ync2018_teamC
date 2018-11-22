package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.ProductVO;

public interface ProductService {
	//상품 목록
	public List<ProductVO> listProduct();
	//상품 상세
	public ProductVO detailProduct(int p_idx);
	//상품수정
	public void updateProduct(ProductVO vo);
	//상품삭제
	public void deleteProduct(int p_idx);
}
