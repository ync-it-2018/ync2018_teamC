package kr.ync.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.SignupVO;
import kr.ync.project.service.SignupService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/signup/*")
@Slf4j
public class SignupController {

	@Autowired
	private SignupService signupService;
    
    //SignUp GET
    @RequestMapping(value="/signup.do", method=RequestMethod.GET)
    public void signupGET() {
        
    }
    
    //SignUp PSOT
        @RequestMapping(value="/signup.do", method=RequestMethod.POST)
        public String signupPOST(SignupVO signVO) {
            
            signupService.insertMember(signVO);
            
            return "front/index";
        }
	
	
}
