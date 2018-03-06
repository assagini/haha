package org.zerock.persistence;

import java.util.Date;

import org.zerock.domain.UserVO;
import org.zerock.dto.LoginDTO;

public interface UserDAO {

	//631s
	public UserVO login(LoginDTO dto)throws Exception;
	//631e
	
  public void keepLogin(String uid, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
  
  
  
}


