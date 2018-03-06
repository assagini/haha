package com.recruit.service;

import java.util.Date;

import com.recruit.domain.UserVO;
import com.recruit.dto.LoginDTO;

public interface UserService {

	//633 start
	public UserVO login(LoginDTO dto) throws Exception;
	//633 end

	//665 start
	/*  
	�α��� ������ �����ϴ� keepLogin�� 
	���ſ� ������ ��������� Ȯ���ϴ� ���
	*/
	public void keepLogin(String uid, String sessionId, Date next)throws Exception;
	  
	public UserVO checkLoginBefore(String value);  
	//665 end
	
}
