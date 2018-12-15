package kr.ync.project.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.SignupVO;
import kr.ync.project.persistence.SignupDAO;

@Service
public class SignupServiceImpl implements SignupService {
 
    @Inject
    private SignupDAO dao;
 
    //사용자 회원가입
    @Override
    public void insertMember(SignupVO signVO) {
        dao.insertMember(signVO);
    }
}

