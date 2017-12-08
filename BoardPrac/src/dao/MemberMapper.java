package dao;

import vo.Member;

public interface MemberMapper {

	void insertMember(Member member);
	
	Member selectMember(String id);
}
