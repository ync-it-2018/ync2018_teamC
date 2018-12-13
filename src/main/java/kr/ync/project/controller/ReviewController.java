package kr.ync.project.controller;


import java.util.Locale;

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
import kr.ync.project.domain.ReviewVO;
import kr.ync.project.domain.SignupVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.EventService;
import kr.ync.project.service.ReviewService;
import kr.ync.project.service.SignupService;
import kr.ync.project.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/review/*")
@Slf4j
public class ReviewController {

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
    
    //SignUp GET
    @RequestMapping(value="/review.do", method=RequestMethod.GET)
    public void reviewGET() {
        
    }
    
    //SignUp POST
    @RequestMapping(value="/review.do", method=RequestMethod.POST)
    public String reviewPOST(ReviewVO reviewVO) {
            
    	reviewService.insertReview(reviewVO);
            
        return "admin/index";
    }
    
    @RequestMapping(value="/reviewPhoto.do", method=RequestMethod.GET)
    public void reviewPhotoGET() {
        
    }
    
    @RequestMapping(value="/reviewPhoto.do", method=RequestMethod.POST)
    public String reviewPhotoPOST(ReviewVO reviewVO) {
            
    	reviewService.insertReviewPhoto(reviewVO);
            
        return "admin/index";
    }
	
}
