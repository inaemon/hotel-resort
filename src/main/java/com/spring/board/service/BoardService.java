package com.spring.board.service;

import java.util.List;

import com.spring.board.domain.BoardVO;
import com.spring.board.domain.Criteria;
import com.spring.board.domain.SearchCriteria;

public interface BoardService {
	//글 등록
	public void insert(BoardVO vo) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(int bno) throws Exception;
	//글 상세 조회
	public BoardVO select(int bno) throws Exception;
	//글 전체 조회
	public List<BoardVO> getAll() throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	//전체 목록 수
	public int listCountCriteria(Criteria cri) throws Exception;
	
	//검색 기능이 들어간 후
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}
