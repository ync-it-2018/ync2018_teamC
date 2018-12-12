package kr.ync.project.controller;


import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.EventService;
import kr.ync.project.service.MLevelService;
import kr.ync.project.service.QnaService;
import kr.ync.project.service.SignupService;
import kr.ync.project.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MLevelController {

	private static final Logger logger = LoggerFactory.getLogger(AnoticeController.class);
	
	@Autowired
	private MLevelService mlevelService;
	
	@Inject
	private MLevelService service;
	
	@RequestMapping(value = "/mlevellist", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		//saehee
		// 가나다
		//바꼈니
		logger.info("등급목록보기", locale);
		
		model.addAttribute("mlevellist", service.listAll());
		
		return "admin/MLevelList";
	}
	
	
	@RequestMapping(value = "/MLevelRead", method = {RequestMethod.GET,RequestMethod.POST})
	public String aNoticeRead(@RequestParam("lCode")Integer lCode, Model model) throws Exception {
		
		logger.info("등급상세보기");	
		
		model.addAttribute("list",service.read(lCode));
		
		return "admin/MLevelRead";
	}
    
    //MLEVEL GET
    @RequestMapping(value="mlevel/mlevel.do", method=RequestMethod.GET)
    public void eventGET() {
        
    }
    
    //MLEVEL POST
        @RequestMapping(value="mlevel/mlevel.do", method=RequestMethod.POST)
        public String mlevelPOST(MLevelVO mlevelVO) {
            
        	mlevelService.insertMLevel(mlevelVO);
            
            return "admin/index";
        }
	
}
