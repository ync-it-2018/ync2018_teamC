package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;


import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface EventDAO {

	public void insertEvent(EventVO eventVO);

	public List<EventVO> listEvent() throws Exception;

	public List<EventVO> eventList(EventVO eventVO);

	// 목록
	public List<EventVO> elistAll() throws Exception;

	public EventVO readEvent(Integer eNum) throws Exception;

	public void insertEventPhoto(EventVO eventVO);

	// 수정
	public void updateEvent(EventVO vo) throws Exception;

	// 삭제
	public void deleteEvent(Integer eNum) throws Exception;

	// 어드민 페이징
	public List<EventVO> listPage(int page) throws Exception;

	public List<EventVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

}
