package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.TestVO;

public interface AnoticeDAO {

	public List<AnoticeVO> listAll() throws Exception;

	public AnoticeVO read(Integer nCode) throws Exception;

	public void updateViewCnt(Integer nCode)throws Exception;

}
