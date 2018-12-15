package kr.ync.project.admin.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.admin.persistence.AdminSignupDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class AdminSignupServiceImpl implements AdminSignupService {
 
    @Inject
    private AdminSignupDAO dao;
 
    //관리자 회원가입(등록)
    @Override
    public void insertadminMember(AdminSignupVO adminsignVO) {
        dao.insertadminMember(adminsignVO);
    }
}

