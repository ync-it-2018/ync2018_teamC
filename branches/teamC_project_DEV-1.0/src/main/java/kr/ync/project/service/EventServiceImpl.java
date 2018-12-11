package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.EventDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class EventServiceImpl implements EventService {
 
    @Inject
    private EventDAO dao;
 
    public void insertEvent(EventVO eventVO) {
        dao.insertEvent(eventVO);
    }

	@Override
	public List<EventVO> listEvent() throws Exception {
		// TODO Auto-generated method stub
		return dao.listEvent();
	}

	@Override
	public List<EventVO> eventList(EventVO eventVO) {
		// TODO Auto-generated method stub
		return dao.eventList(eventVO);
	}
	
	@Override
	public List<EventVO> elistAll() throws Exception {
		return dao.elistAll();
	}

	
	@Override
	public EventVO read(Integer eNum) throws Exception {

		return dao.read(eNum);
	}

	@Override
	public void insertEventPhoto(EventVO eventVO) {
		// TODO Auto-generated method stub
		dao.insertEventPhoto(eventVO);
	}
}

