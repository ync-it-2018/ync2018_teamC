package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class EventDAOImpl implements EventDAO {
 
    @Inject
    private SqlSession session;
    
    private static String namespace = "kr.ync.project.mapper.eventMapper";
 
    @Override
    public void insertEvent(EventVO eventVO) {
        session.insert("insertEvent",eventVO);
    }

	@Override
	public List<EventVO> listEvent() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectEvent");
	}

	@Override
	public List<EventVO> eventList(EventVO eventVO) {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectEvent", eventVO);
	}

	//리스트
	@Override
	public List<EventVO> elistAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".elistAll");
	}
	//상세
	@Override
	public EventVO readEvent(Integer eNum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".readEvent", eNum);
	}

	@Override
	public void insertEventPhoto(EventVO eventVO) {
		// TODO Auto-generated method stub
		session.insert("insertEventPhoto",eventVO);
	}

	//수정
	@Override
	public void updateEvent(EventVO vo) throws Exception {
		session.update(namespace + ".updateEvent", vo);
	}

	//삭제
	@Override
	public void deleteEvent(Integer eNum) throws Exception {
		session.delete(namespace + ".deleteEvent", eNum);
	}
	
	// 페이징
	@Override
	public List<EventVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<EventVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}
}