package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface EventService {
	
	//이벤트 목록
    public List<EventVO> listEvent() throws Exception;
    //이벤트 목록
    public List<EventVO> eventList(EventVO eventVO);
    //이벤트 등록
	public  void insertEvent(EventVO eventVO);
    //이벤트 목록
	public List<EventVO> elistAll() throws Exception;
    //이벤트 상세
	public EventVO readEvent(Integer eNum) throws Exception;
    //이벤트 사진 등록
	public void insertEventPhoto(EventVO eventVO);
	
	//이벤트 수정
	public void updateEvent(EventVO vo) throws Exception;
	//이벤트 삭제
	public void deleteEvent(Integer eNum) throws Exception;
	
	//이벤트 페이징
	public List<EventVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;
	
}
