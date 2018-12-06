package kr.ync.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ync.project.domain.ProductVO;

public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.ProductMapper";

	@Override
	public List<ProductVO> listProduct(int p_idx) throws Exception{
		return session.selectList(namespace + ".list", p_idx);
	}

	@Override
	public ProductVO detailProduct(int p_idx) throws Exception{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProduct(ProductVO vo) throws Exception{
		session.update(namespace + ".update", vo);
	}

	@Override
	public void deleteProduct(int p_idx) throws Exception{
		session.delete(namespace + ".delete", p_idx);
	}

	@Override
	public void create(ProductVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}
	
	
	
	
	/*

	
	
	@Override
	public int getBno(Integer rno) throws Exception {
		return session.selectOne(namespace + ".getBno", rno);
	}

	@Override
	public List<ReplyVO> listPage(Integer bno, Criteria cri) throws Exception {

		Map<String, Object> paramMap = new HashMap<>();

		paramMap.put("bno", bno);
		paramMap.put("cri", cri);

		return session.selectList(namespace + ".listPage", paramMap);
	}

	@Override
	public int count(Integer bno) throws Exception {

		return session.selectOne(namespace + ".count", bno);
	}*/
	
}
