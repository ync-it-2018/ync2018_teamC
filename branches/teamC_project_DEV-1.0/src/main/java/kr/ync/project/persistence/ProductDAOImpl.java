package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.domain.SearchCriteria;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.ProductMapper";

	//목록
	@Override
	public List<ProductVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	//상세
	@Override
	public ProductVO readProduct(String pCode) throws Exception {
		return session.selectOne(namespace + ".readProduct", pCode);
	}

	//등록
	@Override
	public void createProduct(ProductVO vo) throws Exception {
		session.insert(namespace + ".createProduct", vo);
	}

	//수정
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		session.update(namespace + ".updateProduct", vo);
	}

	//삭제
	@Override
	public void deleteProduct(String pCode) throws Exception {
		session.delete(namespace + ".deleteProduct", pCode);
	}

	//프론트 리스트
	@Override
	public List<ProductVO> listProduct() throws Exception {
		return session.selectList(namespace + ".list");
	}

	@Override
	public List<ProductVO> productList(ProductVO productVO) {
		return session.selectList(namespace + ".list",productVO);
	}

	
}
