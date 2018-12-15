package kr.ync.project.admin.controller;

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
import kr.ync.project.domain.PageMaker;
import kr.ync.project.admin.domain.QnaVO;
import kr.ync.project.admin.service.QnaService;

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
	/*//목록
	@RequestMapping(value = "/Qnalist", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		//saehee
		// 가나다
		//바꼈니
		logger.info("Q&A목록보기", locale);
		
		model.addAttribute("qnalist", service.listAll());
		
		return "admin/Qnalist";
	}*/
	
	//상세
	@RequestMapping(value = "/QnaRead", method = {RequestMethod.GET,RequestMethod.POST})
	public String aNoticeRead(@RequestParam("qNum")Integer qNum, Model model) throws Exception {
		
		logger.info("리스트상세보기");	
		
		model.addAttribute("list",service.read(qNum));
		
		return "admin/QnaRead";
	}
	
	//글 작성 get
		@RequestMapping(value = "/QnaRegister", method = RequestMethod.GET)
		public void getqna(AnoticeVO vo, Model model) throws Exception {
			logger.info("get Qna");
		}
		
		//글 작성 post
		@RequestMapping(value = "/QnaRegister", method = RequestMethod.POST)
		public String postqna(QnaVO vo, RedirectAttributes rttr) throws Exception {

			logger.info("post Qna");
			logger.info(vo.toString());
			
			service.createQna(vo);
			
			rttr.addFlashAttribute("msg","success");

			return "redirect:/Qnalist";
		}
		
		
		//삭제
		@RequestMapping(value = "/deleteQna", method = RequestMethod.POST)
		public String remove(@RequestParam("qNum") Integer qNum, RedirectAttributes rttr) throws Exception {

			logger.info("공지사항 삭제");
			
			service.deleteQna(qNum);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/Qnalist";
		}
		
		
		//글 수정 get
		@RequestMapping(value = "/admin/QnaModify", method = RequestMethod.GET)
		public void getModify(Integer qNum, Model model) throws Exception {
			logger.info("공지사항 수정 get");
			
			model.addAttribute(service.read(qNum));
		}
			
		//글 수정 post
		@RequestMapping(value = "/admin/QnaModify", method = RequestMethod.POST)
		public String postModify(QnaVO vo, RedirectAttributes rttr) throws Exception {

			logger.info("공지사항 수정 post");
				
			service.updateQna(vo);
				
			rttr.addFlashAttribute("msg","SUCCESS");

			return "redirect:/Qnalist";
		}

		
		//페이징 처리
		@RequestMapping(value = "/listCric", method = RequestMethod.GET)
		public void elistAll(Criteria cri, Model model) throws Exception{
			
			logger.info("Criteria Page");
			
			model.addAttribute("qnalist", service.listCriteria(cri));
		}
		
		@RequestMapping(value = "/Qnalist", method = RequestMethod.GET)
		public String listPage(Criteria cri, Model model) throws Exception{
			
			logger.info(cri.toString());
			
			model.addAttribute("qnalist", service.listCriteria(cri));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			//pageMaker.setTotalCount(131);
			
			pageMaker.setTotalCount(service.listCountCriteria(cri));
			
			model.addAttribute("pageMaker", pageMaker);
			
			return "admin/Qnalist";
		}
	
}
