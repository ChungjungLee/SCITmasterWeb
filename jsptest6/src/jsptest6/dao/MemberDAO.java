package jsptest6.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import jsptest6.vo.Member;

public class MemberDAO {
	SqlSessionFactory sessionFactory = MybatisConfig.getSqlSessionFactory();
	
	public void insertMember(Member member) {
		SqlSession session = null;
		
		try {
			session = sessionFactory.openSession();
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			
			mapper.insertMember(member);
			
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public Member selectMember(String id) {
		Member result = null;
		SqlSession session = null;
		
		try {
			session = sessionFactory.openSession();
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			
			result = mapper.selectMember(id);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}

	public void updateMember(Member member) {
		SqlSession session = null;
		
		try {
			session = sessionFactory.openSession();
			
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			
			mapper.updateMember(member);
			
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
	}
}





























