package kr.ync.project.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.admin.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.admin.service.AnoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class noticeController {

	private static final Logger logger = LoggerFactory.getLogger(noticeController.class);

	@Inject
	private AnoticeService service;

	@RequestMapping(value = "/contact", method = { RequestMethod.GET, RequestMethod.POST })
	public String Notice(Locale locale, Model model) throws Exception {

		logger.info("리스트목록보기", locale);

		model.addAttribute("fclist", service.flistAll());

		return "front/contact";
	}

	@RequestMapping(value = "/NoticeRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String NoticeRead(@RequestParam("nCode") Integer nCode, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute("list", service.readNotice(nCode));

		return "front/NoticeRead";
	}
	


}
