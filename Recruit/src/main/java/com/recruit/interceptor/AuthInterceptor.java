package com.recruit.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.recruit.domain.BoardVO;
import com.recruit.service.UserService;


/*
AuthInterceptor�� Ư�� ��ο� �����ϴ� ���
���� ����ڰ� �α����� ������ ����������� üũ�ϴ� ������ ó���ϱ����� �ۼ���
*/
public class AuthInterceptor extends HandlerInterceptorAdapter {

  //642 start
  private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
  //642 end
 
  //667 start
  /* 
  AuthInterceptor�� UserService Ÿ���� ��ü�� ���Թ޴´�.
    ���� ����ڰ� HttpsSession�� ������ ���� ���� ��� loginCookie�� ������ �ִ��� üũ
    ���� ���ſ� ������ ��Ű�� �ִٸ� UserService ��ü�� �̿��ؼ� ������� ������ �����ϴ����� Ȯ��
    ���� ������� ������ �����Ѵٸ� HttpSession�� �ٽ� ������� ������ �־��ְ� �ȴ�. 
  */  
  @Inject
  private UserService service;
  
  //642 start
  /*
  AuthInterceptor�� preHandle()�� �̿��Ͽ� ���� ����ڰ� �α����� �������� üũ�ϰ�,
    ��Ʈ�ѷ��� ȣ���ϰ� �� �������� �����Ѵ�.
    ���� ����ڰ� �α������� ���� ���¶�� �α����ϴ� '/user/login'���� �̵��ϰ� �Ѵ�.
  */
  @Override
  public boolean preHandle(HttpServletRequest request,
      HttpServletResponse response, Object handler) throws Exception {
    
    HttpSession session = request.getSession();   


    if(session.getAttribute("login") == null){
    
      logger.info("current user is not logined");
      
      //667 start
      saveDest(request);
      
      Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
      
      if(loginCookie != null) { 
        
        BoardVO boardVO = service.checkLoginBefore(loginCookie.getValue());
        
        logger.info("USERVO: " + boardVO);
        
        if(boardVO != null){
          session.setAttribute("login", boardVO);
          return true;
        }
        
      }
      //667 end
      
      response.sendRedirect("/rpjt/index");
      return false;
    }
    return true;
  } 
  //642 end
  
  //645 start
  /*
  AuthInterceptor�� saveDest()�޼ҵ带 �̿��ؼ� ���� ����ڰ� ���ϴ� �������� ������
  HttpSession�� 'dest'��� �̸����� �����Ѵ�.
  GET����� ��쿡�� URI���� ���� �Ķ���͵��� �Բ� �����ؾ� �Ѵ�.
  LoginInterceptor�� �α��� ���� ���� response.sendRedirect()�۾���
  'dest'������ ����ϵ��� ����
  */
  private void saveDest(HttpServletRequest req) {

    String uri = req.getRequestURI();

    String query = req.getQueryString();

    if (query == null || query.equals("null")) {
      query = "";
    } else {
      query = "?" + query;
    }

    if (req.getMethod().equals("GET")) {
      logger.info("dest: " + (uri + query));
      req.getSession().setAttribute("dest", uri + query);
    }
  }
  //645 end
  
  //642 start
  /*  
    �Ʒ� ������ 667�� ���鼭 �ּ�ó����
 
  @Override
  public boolean preHandle(HttpServletRequest request, 
  	HttpServletResponse response, Object handler) throws Exception {

    HttpSession session = request.getSession();

    if (session.getAttribute("login") == null) {

      logger.info("current user is not logined");
      
      response.sendRedirect("/user/login");
      return false;
    }
    return true;
  }
  */
  //642 end
}


