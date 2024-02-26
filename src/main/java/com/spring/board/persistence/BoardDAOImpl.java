package com.spring.board.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.domain.BoardVO;
import com.spring.board.domain.Criteria;
import com.spring.board.domain.SearchCriteria;

@Repository	//저장소(storing place) - DB구현하는 부분에 붙이는 Annotation
public class BoardDAOImpl implements BoardDAO {
	
	//static: 공유 - 이게 바뀌면 사용한 곳가서 다 바꿔야 함
	//final - 변경금지
	private static final String namespace="mappers.boardMapper";
	
	@Autowired		// = @Inject
	private SqlSession session;
	
	@Override
	public void insert(BoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update", vo);

	}

	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace+".delete", bno);
	}

	@Override
	public BoardVO select(int bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}

	@Override
	public List<BoardVO> getAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);

	}

}
