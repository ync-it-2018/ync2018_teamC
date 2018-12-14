package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.persistence.AnoticeDAO;
import kr.ync.project.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Inject
	private ProductDAO dao;

	//목록
	@Override
	public List<ProductVO> listAll() throws Exception {
		return dao.listAll();
	}

	//상세
	/*@Override
	public List<ProductVO> readProduct(String pCode) throws Exception {
		return dao.readProduct(pCode);
	}*/
	@Override
	public ProductVO readProduct(String pCode) throws Exception {
		return dao.readProduct(pCode);
	}

	//등록
	@Override
	public void createProduct(ProductVO vo) throws Exception {
		dao.createProduct(vo);
	}

	//수정
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		dao.updateProduct(vo);
	}

	//삭제
	@Override
	public void deleteProduct(String pCode) throws Exception {
		dao.deleteProduct(pCode);
	}

///////////////////////////////////////////	
	//프론트 상품리스트
	@Override
	public List<ProductVO> listProduct() throws Exception {
		return dao.listProduct();
	}

	public List<ProductVO> productList(ProductVO productVO) {
	      return dao.productList(productVO);

	}

	@Override
	public ProductVO read(String pCode) throws Exception {
		return dao.read(pCode);
	}

	

}
