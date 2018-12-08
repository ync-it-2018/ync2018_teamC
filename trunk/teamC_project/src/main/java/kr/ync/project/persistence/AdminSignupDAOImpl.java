package kr.ync.project.persistence;

import java.util.Date;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class AdminSignupDAOImpl implements AdminSignupDAO {
 
    @Inject
    private SqlSession session;
 
    @Override
    public void insertadminMember(AdminSignupVO adminsignVO) {
        session.insert("insertadminMember",adminsignVO);
    }
}