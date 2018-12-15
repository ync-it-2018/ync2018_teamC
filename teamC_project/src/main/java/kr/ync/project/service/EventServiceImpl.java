package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.EventDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class EventServiceImpl implements EventService {
 
    @Inject
    private EventDAO dao;
 
    //이벤트 등록
    public void insertEvent(EventVO eventVO) {
        dao.insertEvent(eventVO);
    }
    //이벤트 목록
	@Override
	public List<EventVO> listEvent() throws Exception {
		// TODO Auto-generated method stub
		return dao.listEvent();
	}
    //이벤트 목록
	@Override
	public List<EventVO> eventList(EventVO eventVO) {
		// TODO Auto-generated method stub
		return dao.eventList(eventVO);
	}
	
	//이벤트 리스트
	@Override
	public List<EventVO> elistAll() throws Exception {
		return dao.elistAll();
	}

	//이벤트 상세
	@Override
	public EventVO readEvent(Integer eNum) throws Exception {

		return dao.readEvent(eNum);
	}

	//이벤트 사진 등록
	@Override
	public void insertEventPhoto(EventVO eventVO) {
		// TODO Auto-generated method stub
		dao.insertEventPhoto(eventVO);
	}

	//이벤트 수정
	@Override
	public void updateEvent(EventVO vo) throws Exception {
		dao.updateEvent(vo);
	}

	//이벤트 삭제
	@Override
	public void deleteEvent(Integer eNum) throws Exception {
		dao.deleteEvent(eNum);
	}
	
	//이벤트 페이징
	@Override
	public List<EventVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}
}

