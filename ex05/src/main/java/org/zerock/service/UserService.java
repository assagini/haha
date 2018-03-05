package org.zerock.service;

import java.util.Date;

import org.zerock.domain.UserVO;
import org.zerock.dto.LoginDTO;

public interface UserService {

  //633s
  public UserVO login(LoginDTO dto) throws Exception;
  //633e
  
  public void keepLogin(String uid, String sessionId, Date next)throws Exception;
  
  public UserVO checkLoginBefore(String value);  
}
