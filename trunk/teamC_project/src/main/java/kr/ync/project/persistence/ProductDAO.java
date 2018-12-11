package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.ReplyVO;
import kr.ync.project.domain.SearchCriteria;

public interface ProductDAO {
	//상품목록

	public List<ProductVO> listProduct() throws Exception;

	public List<ProductVO> productList(ProductVO productVO);

	//상품상세
	public ProductVO detailProduct(int p_idx) throws Exception;
	//상품등록
	public void insertProduct(ProductVO vo) throws Exception;	
	//상품수정
	public void updateProduct(ProductVO vo) throws Exception;
	//상품삭제
	public void deleteProduct(int p_idx) throws Exception;
	
	
	
	public List<ProductVO> listAll() throws Exception;

	public List<ProductVO> listPage(int page) throws Exception;
  
	public List<ProductVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<ProductVO> listSearch(SearchCriteria cri)throws Exception;
		
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;

	public ProductVO read(String pCode) throws Exception;
}
