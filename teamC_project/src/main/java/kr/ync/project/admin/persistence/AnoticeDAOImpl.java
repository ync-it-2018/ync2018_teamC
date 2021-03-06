package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;

@Repository
public class AnoticeDAOImpl implements AnoticeDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.AnoticeMapper";

	//공지사항 목록
	@Override
	public List<AnoticeVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	//공지사항 상세
	@Override
	public AnoticeVO readNotice(Integer nCode) throws Exception {
		return session.selectOne(namespace + ".readNotice", nCode);
	}

	//공지사항 작성
	@Override
	public void createNotice(AnoticeVO vo) throws Exception {
		session.insert(namespace + ".createNotice", vo);
	}

	//공지사항 수정
	@Override
	public void updateNotice(AnoticeVO vo) throws Exception {
		session.update(namespace + ".updateNotice", vo);
	}

	//공지사항 삭제
	@Override
	public void deleteNotice(Integer nCode) throws Exception {
		session.delete(namespace + ".deleteNotice", nCode);
	}
	
	//공지사항 페이징
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
	

	@Override
	public List<AnoticeVO> flistAll() throws Exception{
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".flistAll");
	}

	//공지 프론트 페이징
	/*@Override
	public List<AnoticeVO> nlistPage(Integer bno, Criteria cri) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("bno", bno);
		paramMap.put("cri", cri);
		
		return session.selectList(namespace + ".nlistPage", paramMap);
	}

	@Override
	public int ncount(Integer bno) throws Exception {
		
		return session.selectOne(namespace) + ".ncount", bno);
	}*/

	
}
