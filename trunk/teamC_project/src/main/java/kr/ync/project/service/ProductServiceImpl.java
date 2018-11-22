package kr.ync.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.ync.project.domain.ProductVO;
import kr.ync.project.persistence.ProductDAO;

public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO dao;

	@Override
	public List<ProductVO> listProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductVO detailProduct(int p_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int p_idx) {
		// TODO Auto-generated method stub
		
	}

}
