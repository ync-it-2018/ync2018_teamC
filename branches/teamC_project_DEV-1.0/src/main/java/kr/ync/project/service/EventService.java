package kr.ync.project.service;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface EventService {
	
	
    public List<EventVO> listEvent() throws Exception;

    public List<EventVO> eventList(EventVO eventVO);


	public  void insertEvent(EventVO eventVO);
	
}
