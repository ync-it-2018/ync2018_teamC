package kr.ync.project.persistence;

import java.sql.Date;
import java.util.List;

import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface MLevelDAO {

	public void insertMLevel(MLevelVO mlevelVO);
	
	public List<MLevelVO> listMLevel() throws Exception;
	
    public List<MLevelVO> MLevelList(MLevelVO mlevelVO);
    
    
    
    public List<MLevelVO> listAll() throws Exception;

	public MLevelVO read(Integer lCode) throws Exception;

}
