package kr.ync.project.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PageMaker;
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
	
	@Inject
	private ReviewService service;
	
/*	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String reviewList(Locale locale, Model model) throws Exception {
		
		logger.info("리스트목록보기", locale);
		
		model.addAttribute("reviewList", Service.rlistAll());
		
		
		return "front/review";
	}*/
    
    
    //Review POST
    @RequestMapping(value="/review.do", method=RequestMethod.POST)
    public String reviewPOST(ReviewVO reviewVO) {
            
    	reviewService.insertReview(reviewVO);
            
        return "redirect:/front/review";
    }
    
    //리뷰 사진 GET
    @RequestMapping(value="/reviewPhoto.do", method=RequestMethod.GET)
    public void reviewPhotoGET() {
        
    }
    
    //리뷰 사진 POST
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
	
	//리뷰 페이징 처리
	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception{
		
		logger.info("Criteria Page");
		
		model.addAttribute("reviewList", service.listCriteria(cri));
	}
	
	@RequestMapping(value = "/reviewList", method = RequestMethod.GET)
	public String listPage(Criteria cri, Model model) throws Exception{
		
		logger.info(cri.toString());
		
		model.addAttribute("reviewList", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "front/review";
	}
}
