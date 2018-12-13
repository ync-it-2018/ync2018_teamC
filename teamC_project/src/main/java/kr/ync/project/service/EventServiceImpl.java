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
	
	//리스트
	@Override
	public List<EventVO> elistAll() throws Exception {
		return dao.elistAll();
	}

	//상세
	@Override
	public EventVO readEvent(Integer eNum) throws Exception {

		return dao.readEvent(eNum);
	}

	@Override
	public void insertEventPhoto(EventVO eventVO) {
		// TODO Auto-generated method stub
		dao.insertEventPhoto(eventVO);
	}

	//수정
	@Override
	public void updateEvent(EventVO vo) throws Exception {
		dao.updateEvent(vo);
	}

	//삭제
	@Override
	public void deleteEvent(Integer eNum) throws Exception {
		dao.deleteEvent(eNum);
	}
}

