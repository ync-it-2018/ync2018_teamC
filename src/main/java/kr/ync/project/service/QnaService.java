package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.QnaVO;

public interface QnaService {

	public List<QnaVO> listAll() throws Exception;
	
	public QnaVO read(Integer qNum) throws Exception;


}
