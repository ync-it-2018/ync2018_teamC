package kr.ync.project.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.EventVO;
import kr.ync.project.service.EventService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin/*")
public class AeventController {
	
	private static final Logger logger = LoggerFactory.getLogger(AeventController.class);
	
	@Inject
	private EventService eventservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	//리스트
	@RequestMapping(value = "/aeventList", method = RequestMethod.GET)
	public void aeventList(Model model) throws Exception {
		
		logger.info("리스트목록보기");
		
		model.addAttribute("eventlist", eventservice.elistAll());
		
	}
	
	//상세
	@RequestMapping(value = "/aeventDetail", method = RequestMethod.GET)
	public void aeventDetail(@RequestParam("eNum") Integer eNum, Model model) throws Exception {

		logger.info("리스트상세보기");

		model.addAttribute(eventservice.readEvent(eNum));

	}
	
	//글 수정 get
		@RequestMapping(value = "/aeventModify", method = RequestMethod.GET)
		public void getModify(Integer eNum, Model model) throws Exception {
			logger.info("이벤트 수정 get");
			
			model.addAttribute(eventservice.readEvent(eNum));
		}
			
		//글 수정 post
		@RequestMapping(value = "/aeventModify", method = RequestMethod.POST)
		public String postModify(EventVO vo, RedirectAttributes rttr) throws Exception {

			logger.info("이벤트 수정 post");
				
			eventservice.updateEvent(vo);
				
			rttr.addFlashAttribute("msg","SUCCESS");

			return "redirect:/admin/aeventList";
		}

		
		//삭제
		@RequestMapping(value = "/deleteEvent", method = RequestMethod.POST)
		public String remove(@RequestParam("eNum") Integer eNum, RedirectAttributes rttr) throws Exception {

			logger.info("이벤트 삭제");
			
			eventservice.deleteEvent(eNum);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/admin/aeventList";
		}
}
