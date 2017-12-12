package jsptest6.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import jsptest6.vo.Board;

public class BoardDAO {
	private SqlSessionFactory sessionFactory = MybatisConfig.getSqlSessionFactory();
	
	/**
	 * 몇 번째 페이지의 게시글들을 가져온다
	 * @param page 가져올 게시글의 페이지
	 * @return 게시글 리스트
	 */
	public ArrayList<Board> selectBoardList(int page) {
		SqlSession session = null;
		ArrayList<Board> result = null;
		
		// mybatis가 굳이 계산하지 않아도 글을 차례로 가져올 수 있도록 도와준다
		int count = 10; // 몇 개 가져올 것인가
		int start = (page - 1) * count; // 어디서부터 시작할 것인가
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			// 자동으로 글을 순서대로 가져오기 위해 필요한 객체
			RowBounds rb = new RowBounds(start, count);
			
			//result = mapper.selectBoardList(rb);
			result = mapper.selectBoardListPage(page);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
	
	/**
	 * 총 게시글 개수 반환
	 * @return
	 */
	public int numBoardList() {
		SqlSession session = null;
		int result = 0;
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.numBoardList();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
	
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
	
	/**
	 * 게시글을 읽어온다
	 * @return
	 */
	public Board selectBoard(int boardnum) {
		SqlSession session = null;
		Board result = null;
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.selectBoard(boardnum);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}
	
	/**
	 * 게시글 삭제
	 * @param boardnum
	 * @return
	 */
	public boolean deleteBoard(int boardnum) {
		SqlSession session = null;
		boolean result = false;
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			if (mapper.deleteBoard(boardnum) == 1) {
				result = true;
			}
			
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return result;
	}

	public boolean increaseView(int boardnum) {
		SqlSession session = null;
		boolean result = false;
		
		try {
			session = sessionFactory.openSession();
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			
			
			if (mapper.increaseView(boardnum) == 1) {
				result = true;
			}
			
			session.commit();
			
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






























