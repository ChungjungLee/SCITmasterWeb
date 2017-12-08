package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Member;

public class MemberDAO {
	SqlSessionFactory sessionFactory = MybatisConfig.getSqlSessionFactory();
	
	/**
	 * 멤버를 디비에 저장
	 * @param member
	 */
	public void joinMember(Member member) {
		SqlSession session = null;
		
		try {
			session = sessionFactory.openSession();
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			
			mapper.insertMember(member);
			System.out.println("member inserted");
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
	
	
	public Member getMember(String id) {
		SqlSession session = null;
		Member result = null;
		
		try {
			session = sessionFactory.openSession();
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			
			System.out.println(id);
			result = mapper.selectMember(id);
			System.out.println(result);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
}


























