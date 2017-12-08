package jsptest6.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import jsptest6.vo.Board;

public class BoardDAO {
	SqlSessionFactory sessionFactory = MybatisConfig.getSqlSessionFactory();
	
	/**
	 * 글 쓰기
	 * @param board
	 * @return
	 */
	public boolean writeBoard(Board board) {
		SqlSession session = null;
		boolean result = false;
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			if (mapper.writeBoard(board) == 1) {
				result = true;
			}
			
			session.commit();
			
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
}
