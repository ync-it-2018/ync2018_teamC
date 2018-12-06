package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.TestVO;

public interface TestService {

	public List<TestVO> listAll() throws Exception;


}
