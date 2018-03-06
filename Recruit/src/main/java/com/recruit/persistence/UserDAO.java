package com.recruit.persistence;

import java.util.Date;

import com.recruit.domain.BoardVO;
import com.recruit.dto.LoginDTO;

public interface UserDAO {

	//631 start
	/*
	�α����� �� �� ������� ���̵�� �н����带 �̿��ؼ� ������� ������ ��ȸ�ϴ� SQL���� ó��
	*/
	public BoardVO login(LoginDTO dto)throws Exception;
	//631 end
	
	//664 start
	/*
	-�ڵ��α��� ����-
	�α��� �� ������� sessionKey�� sessionLimit�� ������Ʈ �ϴ� ���
	loginCookie�� ��ϵ� ������ ������� ������ ��ȸ�ϴ� ��� 
	*/
	public void keepLogin(String id, String sessionId, Date next);
	  
	public BoardVO checkUserWithSessionKey(String value);	
	//664 end  
	
}



/*
�ڵ��α��� �����ϱ� ���� �����ͺ��̽� ���� 

�α��� �ϴ� ������ ���� ���̵� �����ϴ� sessionkey Į��
alter table tbl_user add column
sessionkey varchar(50) not null default 'none';

sessionlimit �̸��� ��ȿ�ð��� ����ϴ� Į��
(�������� �ٽ� �� �� ��ȿ�� �Ⱓ�� �ٽ� ������ �ߴ����� �Ǵ��ϱ� ���ؼ� �ۼ��� ��)
alter table tbl_user
add column sessionlimit timestamp;

*/

