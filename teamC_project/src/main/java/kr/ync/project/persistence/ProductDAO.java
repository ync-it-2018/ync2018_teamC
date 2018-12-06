package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.ReplyVO;

public interface ProductDAO {
	//상품목록
	public List<ProductVO> listProduct(int p_idx) throws Exception;
	//상품상세
	public ProductVO detailProduct(int p_idx) throws Exception;
	//상품등록
	public void create(ProductVO vo) throws Exception;	
	//상품수정
	public void updateProduct(ProductVO vo) throws Exception;
	//상품삭제
	public void deleteProduct(int p_idx) throws Exception;
}
