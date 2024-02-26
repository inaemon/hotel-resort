package com.spring.board.persistence;

import java.util.List;

import com.spring.board.domain.BoardVO;
import com.spring.board.domain.Criteria;
import com.spring.board.domain.SearchCriteria;

public interface BoardDAO {
	public void insert(BoardVO vo) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(int bno) throws Exception;
	public BoardVO select(int bno) throws Exception;
	public List<BoardVO> getAll() throws Exception;
	
	//bring list at page_num	(페이지 번호에 따라 목록 가져오기)
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	//하단 페이지 처리
	public int countPaging(Criteria cri) throws Exception;
	
	//검색 기능이 들어간 후
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
