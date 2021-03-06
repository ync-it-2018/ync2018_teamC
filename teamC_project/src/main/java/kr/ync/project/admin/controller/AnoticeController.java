package kr.ync.project.admin.controller;

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
import kr.ync.project.admin.service.AnoticeService;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PageMaker;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin/*")
public class AnoticeController {

	private static final Logger logger = LoggerFactory.getLogger(AnoticeController.class);

	@Inject
	private AnoticeService service;
	
	//글 작성 get
	@RequestMapping(value = "/aNoticeRegister", method = RequestMethod.GET)
	public void getNotice(AnoticeVO vo, Model model) throws Exception {
		logger.info("get notice");
	}
	
	//글 작성 post
	@RequestMapping(value = "/aNoticeRegister", method = RequestMethod.POST)
	public String postNotice(AnoticeVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("post notice");
		logger.info(vo.toString());
		
		service.createNotice(vo);
		
		rttr.addFlashAttribute("msg","success");

		return "redirect:/admin/aNotice";
	}
	
	
	//상세
	@RequestMapping(value = "/aNoticeRead", method = RequestMethod.GET)
	public void aNoticeRead(@RequestParam("nCode") Integer nCode, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute(service.readNotice(nCode));

	}
	
	//삭제
	@RequestMapping(value = "/deleteNotice", method = RequestMethod.POST)
	public String remove(@RequestParam("nCode") Integer nCode, RedirectAttributes rttr) throws Exception {

		logger.info("공지사항 삭제");
		
		service.deleteNotice(nCode);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/aNotice";
	}
	
	
	//글 수정 get
	@RequestMapping(value = "/aNoticeModify", method = RequestMethod.GET)
	public void getModify(Integer nCode, Model model) throws Exception {
		logger.info("공지사항 수정 get");
		
		model.addAttribute(service.readNotice(nCode));
	}
		
	//글 수정 post
	@RequestMapping(value = "/aNoticeModify", method = RequestMethod.POST)
	public String postModify(AnoticeVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("공지사항 수정 post");
			
		service.updateNotice(vo);
			
		rttr.addFlashAttribute("msg","SUCCESS");

		return "redirect:/admin/aNotice";
	}

	
	//페이징 처리
	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception{
		
		logger.info("Criteria Page");
		
		model.addAttribute("list", service.listCriteria(cri));
	}
	
	@RequestMapping(value = "/aNotice", method = RequestMethod.GET)
	public void listPage(Criteria cri, Model model) throws Exception{
		
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
}
