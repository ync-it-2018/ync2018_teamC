package kr.ync.project.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.ProductMapper";

	//상품 목록
	@Override
	public List<ProductVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	//상품 상세
	/*@Override
	public List<ProductVO> readProduct(String pCode) throws Exception {
		return session.selectList(namespace + ".readProduct",pCode);
	}*/
	@Override
	public ProductVO readProduct(String pCode) throws Exception {
		return session.selectOne(namespace + ".readProduct", pCode);
	}

	//상품 등록
	@Override
	public void createProduct(ProductVO vo) throws Exception {
		session.insert(namespace + ".createProduct", vo);
	}

	//상품 수정
	@Override
	public void updateProduct(ProductVO vo) throws Exception {
		session.update(namespace + ".updateProduct", vo);
	}

	//상품 삭제
	@Override
	public void deleteProduct(String pCode) throws Exception {
		session.delete(namespace + ".deleteProduct", pCode);
	}

	//상품 프론트 리스트
	@Override
	public List<ProductVO> listProduct(Map<String, Object> param) throws Exception {
		return session.selectList(namespace + ".list", param);
	}
	
	//이벤트 목록
	@Override
	public List<ProductVO> productList(ProductVO productVO) {
		return session.selectList(namespace + ".list",productVO);
	}
	
	//제품상세보기
	@Override
	public ProductVO read(String pCode) throws Exception {
		return session.selectOne(namespace + ".read" ,pCode);
	}

	//베스트 상품
	@Override
	public List<ProductVO> best() throws Exception {
		// TODO Auto-generated method stub
		return  session.selectList(namespace + ".best");
	}
	
	//신상
	@Override
	public List<ProductVO> newArrival() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".newArrival");
	}
	
	//추천 상품
	@Override
	public List<ProductVO> recommend() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".recommend");
	}

	//페이징
	@Override
	public List<AnoticeVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<AnoticeVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}
	
	@Override
	public int countPaging(Criteria cri)throws Exception {
		
		return session.selectOne(namespace + ".countPaging", cri);
	}
}
