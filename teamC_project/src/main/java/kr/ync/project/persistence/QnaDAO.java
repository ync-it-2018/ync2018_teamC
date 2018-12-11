package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.QnaVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.TestVO;

public interface QnaDAO {


	public List<QnaVO> listAll() throws Exception;
	
	public QnaVO read(Integer qNum) throws Exception;

	public void updateViewCnt(Integer qNum)throws Exception;

	

}
