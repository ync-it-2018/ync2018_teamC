package kr.ync.project.service;

import org.zerock.domain.MessageVO;

public interface MessageDAO {

  public void create(MessageVO vo) throws Exception;

  public MessageVO readMessage(Integer mid) throws Exception;

  public void updateState(Integer mid) throws Exception;

}
