package com.spring.board.domain;

public class SearchCriteria extends Criteria {
	//상위클래스가 갖고 있는 페이지 번호와 페이지에 보여지는 목록 수 외에
	//필요한 정보를 추가한 객체
	private String searchType;	//검색유형
	private String keyword;		//검색키워드
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	//확인용
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
}
