package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		//saehee
		// 가나다
		//바꼈니
		logger.info("hi", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "front/write_review";
	}
	
	/*1017수정2*/
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(Locale locale, Model model) {
		
		return "front/product";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "front/index";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		
		return "front/about";
	}
	
	@RequestMapping(value = "/blog_detail", method = RequestMethod.GET)
	public String blog_detail(Locale locale, Model model) {
		
		return "front/blog_detail";
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(Locale locale, Model model) {
		
		return "front/blog";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		
		return "front/contact";
	}
	
	@RequestMapping(value = "/home_02", method = RequestMethod.GET)
	public String home_02(Locale locale, Model model) {
		
		return "front/home_02";
	}
	
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String product_detail(Locale locale, Model model) {
		
		return "front/product_detail";
	}
		
	@RequestMapping(value = "/shoping_cart", method = RequestMethod.GET)
	public String shopping_cart(Locale locale, Model model) {
		
		return "front/shoping_cart";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "front/login";
	}
	
	@RequestMapping(value = "/aindex", method = RequestMethod.GET)
	public String aindex(Locale locale, Model model) {
		
		return "admin/index";
	}
	
	@RequestMapping(value = "/alogin", method = RequestMethod.GET)
	public String alogin(Locale locale, Model model) {
		
		return "admin/alogin";
	}
	
	@RequestMapping(value = "/ajoin", method = RequestMethod.GET)
	public String ajoin(Locale locale, Model model) {
		
		return "admin/ajoin";
	}
	
	@RequestMapping(value = "/coInfo", method = RequestMethod.GET)
	public String coInfo(Locale locale, Model model) {
		
		return "admin/coInfo";
	}
	
	@RequestMapping(value = "/productup", method = RequestMethod.GET)
	public String productup(Locale locale, Model model) {
		
		return "admin/aproduct/productup";
	}
	
	@RequestMapping(value = "/addslider", method = RequestMethod.GET)
	public String addslider(Locale locale, Model model) {
		
		return "admin/addslider";
	}
	
	@RequestMapping(value = "/test02", method = RequestMethod.GET)
	public String popup(Locale locale, Model model) {
		
		return "admin/test02";
	}
	
	@RequestMapping(value = "/test02_1", method = RequestMethod.GET)
	public String popuptest(Locale locale, Model model) {
		
		return "admin/test02_1";
	}
	
	@RequestMapping(value = "/management", method = RequestMethod.GET)
	public String management(Locale locale, Model model) {
		
		return "admin/management";
	}
	
	
	@RequestMapping(value = "/popupload", method = RequestMethod.GET)
	public String popupload(Locale locale, Model model) {
		
		return "admin/popupload";
	}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		return "front/join";
	}
	
	@RequestMapping(value = "/MypageUserinfo", method = RequestMethod.GET)
	public String MypageUserinfo(Locale locale, Model model) {
		
		return "front/MypageUserinfo";
	}
	
	@RequestMapping(value = "/MypageSavedMoney", method = RequestMethod.GET)
	public String MypageSavedMoney(Locale locale, Model model) {
		
		return "front/MypageSavedMoney";
	}
	
	@RequestMapping(value = "/MypageOrder", method = RequestMethod.GET)
	public String MypageOrder(Locale locale, Model model) {
		
		return "front/MypageOrder";
	}
	
	@RequestMapping(value = "/MypageWithdrawal", method = RequestMethod.GET)
	public String MypageWithdrawal(Locale locale, Model model) {
		
		return "front/MypageWithdrawal";
	}
	
	@RequestMapping(value = "/MypageInterestedpdt", method = RequestMethod.GET)
	public String MypageInterestedpdt(Locale locale, Model model) {
		
		return "front/MypageInterestedpdt";
	}
	
}
