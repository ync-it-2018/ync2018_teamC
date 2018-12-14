package kr.ync.project.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.Criteria;

@Controller
public class PageController {
	
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	/*
	@RequestMapping(value="/{bno}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(
		@PathVariable("bno") Integer bno,
		@PathVariable("page") Integer page) {
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			Criteria cri = new Criteria();
			cri.setPage(cri);
			
			Map<String, Object> map = new HashMap<String, Object>();
			List<AnoticeVO> list = service.list
		}
	}*/
	
	/*@RequestMapping(value="/listCri", method = RequestMethod.GET)
	public void listApp(Criteria cri,Model model) throws Exception {
		
		logger.info("show list Page with Criteria...");
		
		model.addAttribute("list", service.listCriteria(cri));
	}*/
			
			
	
}
