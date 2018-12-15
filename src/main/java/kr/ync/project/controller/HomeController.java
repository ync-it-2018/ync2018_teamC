package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.domain.EventVO;
import kr.ync.project.domain.ProductVO;
import kr.ync.project.service.EventService;
import kr.ync.project.admin.service.MLevelService;
import kr.ync.project.service.ProductService;
import kr.ync.project.service.ReviewService;
/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */	
	
	@Inject
	private EventService eventService;
	@Inject
	private ProductService productService; //서비스 객체
	
	//home컨트롤러(베스트상품, 신상, 추천)
	@RequestMapping(value = "/index", method = {RequestMethod.GET, RequestMethod.POST})
	public String home( Locale locale, Model model) throws Exception {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
				
		model.addAttribute("serverTime", formattedDate);

		//베스트 상품
		List<ProductVO> best = productService.best();
		model.addAttribute("bestProduct", best);
		
		//신상
		List<ProductVO> newArrival = productService.newArrival();
		model.addAttribute("newArrival", newArrival);

		//추천
		List<ProductVO> recommend = productService.recommend();
		model.addAttribute("recommend", recommend);
		
		return "front/index";
	}
	
	
	//제품리스트(개,고양이 카테고리에따라)
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(Locale locale, HttpServletRequest request, Model model) throws Exception {//model:택배기사
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("big", request.getParameter("bigcategory"));
		param.put("middle", request.getParameter("middlecategory"));
		param.put("small", request.getParameter("smallcategory"));
		//param.put("middle", "02");
		
		List<ProductVO> productList = productService.listProduct(param);
		
		System.out.println("가져온 상품 : " + productList);
		
		model.addAttribute("productList", productList);//"key",value
		
		return "front/product";
	}
	

	
	
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(Locale locale, Model model) throws Exception {
		
		 List<EventVO> eventList = eventService.listEvent();
	      
		 
	     model.addAttribute("eventList", eventList);
		
		return "front/event";
	}
	
	@RequestMapping(value = "/write_review", method = RequestMethod.GET)
	public String write_review(Locale locale, Model model) {
		
		return "front/write_review";
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
	

	//제품상세보기
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String product_detail(@RequestParam("pCode")String pCode, Model model) throws Exception {
		
		model.addAttribute("productData", productService.read(pCode));
		//serviceimple에서 받아온 데이터를 view로 보내줌
		
		return "front/product_detail";
	}
	
	
	
	
		
	@RequestMapping(value = "/shoping_cart", method = RequestMethod.GET)
	public String shopping_cart(Locale locale, Model model) {
		
		return "front/shoping_cart";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("home ctroller");
		return "front/login";
	}
	
	@RequestMapping(value = "/aindex", method = RequestMethod.GET)
	public String aindex(Locale locale, Model model) {
		
		return "admin/index";
	}
	
	@RequestMapping(value = "/ajoin", method = RequestMethod.GET)
	public String ajoin(Locale locale, Model model) {
		
		return "admin/ajoin";
	}
	
	@RequestMapping(value = "/adaysaleprice", method = RequestMethod.GET)
	public String adaysaleprice(Locale locale, Model model) {
		
		return "admin/aDaySaleprice";
	}
	
	@RequestMapping(value = "/coInfo", method = RequestMethod.GET)
	public String coInfo(Locale locale, Model model) {
		
		return "admin/coInfo";
	}
	
	
	
	@RequestMapping(value = "/addslider", method = RequestMethod.GET)
	public String addslider(Locale locale, Model model) {
		
		return "admin/addslider";
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
	
	
	@RequestMapping(value = "/aevent", method = RequestMethod.GET)
	public String aevent(Locale locale, Model model) {
		
		return "admin/aevent";
	}
	
	@RequestMapping(value = "/asaleprice", method = RequestMethod.GET)
	public String asaleprice(Locale locale, Model model) {
		
		return "admin/aSaleprice";
	}
	
	@RequestMapping(value = "/aeventPhoto", method = RequestMethod.GET)
	public String aeventPhoto(Locale locale, Model model) {
		
		return "admin/aeventPhoto";
	}
	
	@RequestMapping(value = "/aeventUp", method = RequestMethod.GET)
	public String aeventUp(Locale locale, Model model) {
		
		return "admin/aeventUp";
	}

	@Inject
	private MLevelService mlevelservice;
	
	@RequestMapping(value = "/mlevel", method = RequestMethod.GET)
	public String mlevel(Locale locale, Model model) {
		
		return "admin/MLevel";
	}


}