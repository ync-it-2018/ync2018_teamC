package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface EventDAO {

	public void insertEvent(EventVO eventVO);
	
	public List<EventVO> listEvent() throws Exception;

    public List<EventVO> eventList(EventVO eventVO);

}
