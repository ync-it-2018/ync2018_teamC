package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface EventService {
	
	
    public List<EventVO> listEvent() throws Exception;

    public List<EventVO> eventList(EventVO eventVO);

	public  void insertEvent(EventVO eventVO);

	public List<EventVO> elistAll() throws Exception;

	public EventVO readEvent(Integer eNum) throws Exception;

	public void insertEventPhoto(EventVO eventVO);
	
	//수정
	public void updateEvent(EventVO vo) throws Exception;
	//삭제
	public void deleteEvent(Integer eNum) throws Exception;
	
	// 페이징
	public List<EventVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;
	
}
