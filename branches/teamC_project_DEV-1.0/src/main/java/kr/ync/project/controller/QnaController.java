package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
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

import kr.ync.project.service.BoardService;
import kr.ync.project.service.QnaService;
import kr.ync.project.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class QnaController {
	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@Inject
	private QnaService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/Qnalist", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		//saehee
		// 가나다
		//바꼈니
		logger.info("Q&A목록보기", locale);
		
		model.addAttribute("qnalist", service.listAll());
		
		return "admin/Qnalist";
	}
	
	
	@RequestMapping(value = "/QnaRead", method = {RequestMethod.GET,RequestMethod.POST})
	public String aNoticeRead(@RequestParam("qNum")Integer qNum, Model model) throws Exception {
		
		logger.info("리스트상세보기");	
		
		model.addAttribute("list",service.read(qNum));
		
		return "admin/QnaRead";
	}
	
	
}
