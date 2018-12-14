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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;
import kr.ync.project.domain.AnoticeVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.MLevelVO;
import kr.ync.project.service.MLevelService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/*")
@Slf4j
public class MLevelController {

	private static final Logger logger = LoggerFactory.getLogger(AnoticeController.class);
	
	@Inject
	private MLevelService service;
	
	//목록
	@RequestMapping(value = "/MLevel", method = RequestMethod.GET)
	public void aNotice(Model model) throws Exception {

		logger.info("등급목록보기");

		model.addAttribute("list", service.listAll());

	}
	
	
	////
	
	//글 작성 get
	@RequestMapping(value = "/MLevelRegister", method = RequestMethod.GET)
	public void getMLevel(AnoticeVO vo, Model model) throws Exception {
		logger.info("get level");
	}
	
	//글 작성 post
	@RequestMapping(value = "/MLevelRegister", method = RequestMethod.POST)
	public String postMLevel(MLevelVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post level");
		logger.info(vo.toString());
		
		service.createMLevel(vo);
		
		rttr.addFlashAttribute("msg","success");

		return "redirect:/admin/MLevel";
	}
	
	
	//상세
	@RequestMapping(value = "/MLevelRead", method = RequestMethod.GET)
	public void aNoticeRead(@RequestParam("mlCode") Integer mlCode, Model model) throws Exception {

		logger.info("등급상세보기");

		model.addAttribute(service.read(mlCode));

	}
	
	//삭제
	@RequestMapping(value = "/deleteMLevel", method = RequestMethod.POST)
	public String remove(@RequestParam("mlCode") Integer mlCode, RedirectAttributes rttr) throws Exception {

		logger.info("등급 삭제");
		
		service.deleteMLevel(mlCode);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/MLevel";
	}
	
	
	//글 수정 get
	@RequestMapping(value = "/MLevelModify", method = RequestMethod.GET)
	public void getModify(Integer mlCode, Model model) throws Exception {
		logger.info("등급 수정 get");
		
		model.addAttribute(service.read(mlCode));
	}
		
	//글 수정 post
	@RequestMapping(value = "/MLevelModify", method = RequestMethod.POST)
	public String postModify(MLevelVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("등급 수정 post");
			
		service.updateMLevel(vo);
			
		rttr.addFlashAttribute("msg","SUCCESS");

		return "redirect:/admin/MLevel";
	}

	
/*	//페이징 처리
	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception{
		
		logger.info("Criteria Page");
		
		model.addAttribute("list", service.listCriteria(cri));
	}*/
}
