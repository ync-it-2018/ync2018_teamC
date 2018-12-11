package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Inject
	private ProductDAO dao;

	@Override

	public List<ProductVO> listProduct() throws Exception {
		return dao.listProduct();
	}

	public List<ProductVO> productList(ProductVO productVO) {
		return dao.productList(productVO);

	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ProductVO detailProduct(String p_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteProduct(String p_code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertProduct(ProductVO vo) throws Exception {
		dao.insertProduct(vo);
	}

	@Override
	public List<ProductVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<ProductVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public ProductVO read(String pCode) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(pCode);
	}

}
