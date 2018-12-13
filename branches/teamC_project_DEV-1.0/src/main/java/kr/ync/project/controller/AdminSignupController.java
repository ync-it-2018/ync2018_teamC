package kr.ync.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.AdminSignupVO;
import kr.ync.project.service.AdminSignupService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/asignup/*")
@Slf4j
public class AdminSignupController {

	@Autowired
	private AdminSignupService AdminsignupService;
    
    //SignUp GET
    @RequestMapping(value="/asignup.do", method=RequestMethod.GET)
    public void AdminsignupGET() {
        
    }
    
    //SignUp PSOT
        @RequestMapping(value="/asignup.do", method=RequestMethod.POST)
        public String AdminsignupPOST(AdminSignupVO adminsignVO) {
            
            AdminsignupService.insertadminMember(adminsignVO);
            
            return "admin/index";
        }
	
	
}
