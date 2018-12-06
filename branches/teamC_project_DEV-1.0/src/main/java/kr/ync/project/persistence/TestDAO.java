package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BoardVO;
//import kr.ync.project.domain.Criteria;
//import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.TestVO;

public interface TestDAO {


	public List<TestVO> listAll() throws Exception;

	

}
