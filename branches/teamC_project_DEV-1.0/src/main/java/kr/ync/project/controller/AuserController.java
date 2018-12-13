package kr.ync.project.controller;

import java.awt.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.CategoryBigVO;
import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.AUserService;
import kr.ync.project.service.CategoryBigService;
import kr.ync.project.service.UserService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/*")
public class AuserController {
		
private static final Logger logger = LoggerFactory.getLogger(AuserController.class);
	
	@Inject
	private AUserService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	//목록
		@RequestMapping(value = "/memberlist", method = RequestMethod.GET)
		public void memberlist(Model model) throws Exception {

			logger.info("리스트목록보기");

			model.addAttribute("userlist", service.userlist());

		}
		
		//상세
		@RequestMapping(value = "/MemberRead", method = RequestMethod.GET)
		public void MemberRead(@RequestParam("mId") String mId, Model model) throws Exception {

			logger.info("리스트상세보기");

			model.addAttribute(service.readMember(mId));

		}
		
		//삭제
		@RequestMapping(value = "/deleteMember", method = RequestMethod.POST)
		public String remove(@RequestParam("mId") String mId, RedirectAttributes rttr) throws Exception {

			logger.info("회원 삭제");
			
			service.deleteMember(mId);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/admin/memberlist";
		}
		
		
		
	/*@RequestMapping(value = "/memberlist", method = RequestMethod.GET)
	public String memberlist(Locale locale, Model model) throws Exception {
		
		logger.info("회원 리스트", locale);
		
		model.addAttribute("userlist", service.userlist());
		
		return "admin/memberlist";
	}

	
		//삭제
		@RequestMapping(value = "/deleteMember", method = RequestMethod.POST)
		public String remove(@RequestParam("mId") String mId, RedirectAttributes rttr) throws Exception {

			logger.info("회원 삭제");
			
			service.deleteMember(mId);

			rttr.addFlashAttribute("msg", "SUCCESS");

			return "redirect:/admin/memberlist";
		}
	
		//어드민 - 회원 선택해서 상세보기 
		@RequestMapping(value = "/MemberRead", method = RequestMethod.GET)
		public String MemberRead(@RequestParam("mId") String mId, Model model) throws Exception {

			logger.info("리스트상세보기");

			model.addAttribute("userlist", service.readMember(mId));

			return "admin/MemberRead";
		}*/
	
	
		
	
}