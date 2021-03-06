package kr.ync.project.admin.persistence;

import java.util.Date;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class AdminSignupDAOImpl implements AdminSignupDAO {
 
    @Inject
    private SqlSession session;
    
    //관리가 회원가입(등록)
    @Override
    public void insertadminMember(AdminSignupVO adminsignVO) {
        session.insert("insertadminMember",adminsignVO);
    }
}