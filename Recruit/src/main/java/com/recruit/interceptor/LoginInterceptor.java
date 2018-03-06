package com.recruit.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/*
LoginInterceptor�� '/loginPost'�� �����ϵ��� �����ϴ� ���� �������� �ۼ���
*/
public class LoginInterceptor extends HandlerInterceptorAdapter {

	//636 start
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	//636 end
	
	//636 start
	/*
	postHandle()������ UserController���� 'userVO'��� �̸����� ��ü�� ��Ƶ� �����̹Ƿ�,
	�� ���¸� üũ�ؼ� HttpSesssion�� �����Ѵ�.
	������� ��Ű�� �ݵ�� HttpServletResponse�� ��ܼ� ������
	*/
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");
		
		//response.sendRedirect("/"); 646�� �ϸ鼭 �ּ�ó��

		if (userVO != null) {

			logger.info("new login success");
			session.setAttribute(LOGIN, userVO);

			//658 start
			/*
			 '�ڵ� �α���'�� ������ ��� ��Ű�� �����ϰ� ������ ��Ű�� �̸��� loginCookie�� ���� ������
			 loginCookie���� ��(value)���� ���� ������ ���̵� ���� ���� ���� ���̵�� ���� ��Ű�� ���� �ǹ�
			 */
			/*
			 �� �ڵ带 �̿��ؼ� �α��� �ϸ� �Խù��� ���� ���������� �Ź� �������� 'loginCookie'�� ���޵Ǵ� ����
			 ������ ������ �̿��ؼ� Ȯ���� ����
			 */
			if (request.getParameter("useCookie") != null) {

				logger.info("remember me................");
				Cookie loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setPath("/");
				/*
				 ������Ű�� ��� �������� �����ϸ� �������, �׷��� ������ �Ź� �������� ���� �����ϰ� �����ϸ� ���Ӱ� ���������. 
				 �ݸ�, loginCookie�� ��� �α��� �� �� �������� �̿��ؼ� ������ ���� �ð� �����Ǳ����� setMaxAge()�� �̿� 
				 setMaxAge()�� �� ������ �ð� ���� ��ȿ 60 * 60 * 24 * 7�� ���� �����ϰ� �������� ����
				 */
				loginCookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(loginCookie);
			}
			//658 end
			
			//646 start
			Object dest = session.getAttribute("dest");

			response.sendRedirect(dest != null ? (String) dest : "/");
			//646 end
		}
	}
	//636 end

	//636 start
	/*
	preHandle()������ ���� HttpSession�� �����ִ� ������ �ִ� ��쿡�� ������ ������
	*/
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}
	//636 end
}
