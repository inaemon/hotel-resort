package com.spring.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.board.domain.BoardVO;
import com.spring.board.domain.Criteria;
import com.spring.board.domain.SearchCriteria;
import com.spring.board.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;
	
	@Override
	public void insert(BoardVO vo) throws Exception {
		dao.insert(vo);

	}

	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);

	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

	@Override
	public BoardVO select(int bno) throws Exception {
		return dao.select(bno);
		
	}

	@Override
	public List<BoardVO> getAll() throws Exception {
		return dao.getAll();

	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
