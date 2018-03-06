package com.recruit.persistence;

import java.util.Date;

import com.recruit.domain.BoardVO;
import com.recruit.dto.LoginDTO;

public interface UserDAO {

	//631 start
	/*
	로그인을 할 때 사용자의 아이디와 패스워드를 이용해서 사용자의 정보를 조회하는 SQL문을 처리
	*/
	public BoardVO login(LoginDTO dto)throws Exception;
	//631 end
	
	//664 start
	/*
	-자동로그인 구현-
	로그인 한 사용자의 sessionKey와 sessionLimit를 업데이트 하는 기능
	loginCookie에 기록된 값으로 사용자의 정보를 조회하는 기능 
	*/
	public void keepLogin(String id, String sessionId, Date next);
	  
	public BoardVO checkUserWithSessionKey(String value);	
	//664 end  
	
}



/*
자동로그인 구현하기 전에 데이터베이스 설정 

로그인 하는 시점의 세견 아이디를 보관하는 sessionkey 칼럼
alter table tbl_user add column
sessionkey varchar(50) not null default 'none';

sessionlimit 이름의 유효시간을 기록하는 칼럼
(서버에서 다시 한 번 유효한 기간에 다시 접속을 했는지를 판단하기 위해서 작성해 줌)
alter table tbl_user
add column sessionlimit timestamp;

*/

