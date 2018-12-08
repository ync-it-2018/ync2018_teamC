package kr.ync.project.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.AdminSignupDAO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class AdminSignupServiceImpl implements AdminSignupService {
 
    @Inject
    private AdminSignupDAO dao;
 
    @Override
    public void insertadminMember(AdminSignupVO adminsignVO) {
        dao.insertadminMember(adminsignVO);
    }
}

