package jsptest6.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import jsptest6.vo.Board;

public interface BoardMapper {
	
	ArrayList<Board> selectBoardList(RowBounds rb);
	
	ArrayList<Board> selectBoardListPage(int page);
	
	Board selectBoard(int boardnum);
	
	int numBoardList();
	
	int writeBoard(Board board);
	
	int reviseBoard(Board board);
	
	int deleteBoard(int boardnum);
}
