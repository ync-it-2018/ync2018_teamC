package kr.ync.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ync.project.domain.ProductVO;

public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SqlSession session;

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
