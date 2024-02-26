package com.spring.board.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	//화면 하단에 보여줄 페이지 수
	private int displayPageNum=10;
	
	//현재 페이지와 현재 페이지에 보여줄 목록 수를 가지고 있는 객체 선언
	private Criteria cri;
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	private void calcData() {
		/** totalCount 값에 따라서 endPage, startPage 계산 */
		//마지막페이지 Math.ceil() : 올림함수 -> 계산 후 올림  ex) 4.1  -> 5  (ENDPAGE)
		endPage=(int)(Math.ceil(cri.getPage()/(double)displayPageNum)*displayPageNum);
		startPage=(endPage-displayPageNum)+1;
		
		/** endPage 재계산 recount */
		//다시 한 번 확인
		int tempEndPage=(int)(Math.ceil(totalCount/(double)cri.getPerPageNum()));
		if(endPage>tempEndPage)
			endPage=tempEndPage;
		
		/** prev, next button 활성화 여부 결정 */
		prev=(startPage==1)?false:true;		//startPage가 1페이지면 이전페이지 비활성화
		next=endPage*cri.getPerPageNum() >= totalCount?false:true;	//마지막페이지랑 같으면 false		
	}
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	
	//uri
	/***
	 * 	URI : http://localhost8080/~? 뒤에 붙는 주소
	 * 		  http://localhost8080/board/listPage? 뒤에
		URICOMPONENTS객체를 통해 붙여주면 더 쉽게 가능
		(URL이 아니라 uri임)
	 */
	public String makeQuery(int page) {
		UriComponents uriCom
				=UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())	//Criteria가 갖고있는 getPerPageNum
				.build();
		
		return uriCom.toUriString();
	}
	
	/**
	 * A a = new B();
	 * -> B가 오버라이딩 안 한 PerPageNum()은 A꺼로 불려짐
	 * -> 오버라이딩하면 b의 PerPageNum()으로 호출
	 * 
	 * -> b에서 새로만든 메소드는 못 부름
	 * -> B b = new B(); 또는 형변환해야함
	 * */
	//searchKeyword uri
	public String makeSearch(int page) {
		UriComponents uriCom
				=UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())	//Criteria가 갖고있는 getPerPageNum
				.queryParam("searchType", ((SearchCriteria)cri).getSearchType())	//searchType은 
				.queryParam("keyword", ((SearchCriteria)cri).getKeyword())
				.build();
		
		return uriCom.toUriString();
	}
	
}
