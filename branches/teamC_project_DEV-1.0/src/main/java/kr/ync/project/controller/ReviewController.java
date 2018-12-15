package kr.ync.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    
    //Review POST
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
    
    //리뷰 상세 보기
    @RequestMapping(value = "/ReviewRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String NoticeRead(@RequestParam("rNum") Integer rNum, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute("list", reviewService.readReview(rNum));

		return "front/ReviewRead";
	}
	
}
