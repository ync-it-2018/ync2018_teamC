package kr.ync.project.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ALoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "alogin";
	
	//AUserVO 타입의 객체를 보관해 중간에 쿠키생성
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object AUserVO = modelMap.get("AUserVO");
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (AUserVO != null) {

			log.info("new Alogin success");
			session.setAttribute(LOGIN, AUserVO);
			log.info("session" + modelMap.get("AUserVO"));
			
			if (request.getParameter("useCookie") != null) {

				log.info("remember me................");
				Cookie loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setPath("/");
				loginCookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(loginCookie);
			}
			//response.sendRedirect("/");
			Object dest = session.getAttribute("dest");
			
			response.sendRedirect(dest != null ? (String) dest : "/aindex");
			
		} else {
			response.sendRedirect("/admin/aloginError");
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			log.info("clear Alogin data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}
}
