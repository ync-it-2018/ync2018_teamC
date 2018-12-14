package kr.ync.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.ReviewVO;
import kr.ync.project.service.ReviewService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/review/*")
@Slf4j
public class ReviewController {

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
    
    /*//SignUp GET
    @RequestMapping(value="/review.do", method=RequestMethod.GET)
    public void reviewGET() {
        
    }*/
    
    //SignUp POST
    @RequestMapping(value="/review.do", method=RequestMethod.POST)
    public String reviewPOST(ReviewVO reviewVO) {
            
    	reviewService.insertReview(reviewVO);
            
        return "redirect:/front/review";
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
