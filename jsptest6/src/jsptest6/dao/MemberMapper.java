package jsptest6.dao;

import jsptest6.vo.Member;

public interface MemberMapper {

	void insertMember(Member member);
	
	Member selectMember(String id);

	void updateMember(Member member);
	
}
