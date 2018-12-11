package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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

	@Override
	public List<EventVO> elistAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".elistAll");
	}

	@Override
	public EventVO read(Integer eNum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", eNum);
	}

	@Override
	public void insertEventPhoto(EventVO eventVO) {
		// TODO Auto-generated method stub
		session.insert("insertEventPhoto",eventVO);
	}
}