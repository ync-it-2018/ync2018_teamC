package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.ProductVO;

public interface ProductDAO {
	//상품목록
	public List<ProductVO> listProduct();
	//상품상세
	public ProductVO detailProduct(int p_idx);
	//상품수정
	public void updateProduct(ProductVO vo);
	//상품삭제
	public void deleteProduct(int p_idx);
}
