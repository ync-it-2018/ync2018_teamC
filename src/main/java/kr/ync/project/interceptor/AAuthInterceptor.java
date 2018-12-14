package kr.ync.project.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.AUserVO;
import kr.ync.project.service.AUserService;
import kr.ync.project.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AAuthInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private AUserService service;

	//관리자 세션 존재여부 확인후 logincookie진행
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute("alogin") == null) {

			log.info("current user is not logined");

			saveDest(request);

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) { // 쿠기값이 있다면
				
				// 쿠키값으로 table에 저장되어 있는 session id 값을 조회해 사용자 정보를 가져온다.
				AUserVO AUserVO = service.checkALoginBefore(loginCookie.getValue());

				log.info("AUSERVO: " + AUserVO);

				if (AUserVO != null) {
					session.setAttribute("alogin", AUserVO);
					return true;
				}

			}

			response.sendRedirect("/alogin");
			return false;
		}
		return true;
	}

	private void saveDest(HttpServletRequest req) {

		String uri = req.getRequestURI();

		String query = req.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}

		if (req.getMethod().equals("GET")) {
			log.info("dest: " + (uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}
}

// if(session.getAttribute("login") == null){
//
// logger.info("current user is not logined");
// response.sendRedirect("/user/login");
// return false;
// }