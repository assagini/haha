package com.recruit.service;

import java.util.Date;

import com.recruit.domain.BoardVO;
import com.recruit.dto.LoginDTO;

public interface UserService {

	//633 start
	public BoardVO login(LoginDTO dto) throws Exception;
	//633 end

	//665 start
	/*  
	�α��� ������ �����ϴ� keepLogin�� 
	���ſ� ������ ��������� Ȯ���ϴ� ���
	*/
	public void keepLogin(String id, String sessionId, Date next)throws Exception;
	  
	public BoardVO checkLoginBefore(String value);  
	//665 end
	
}
