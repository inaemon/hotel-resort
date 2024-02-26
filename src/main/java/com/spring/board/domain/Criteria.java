package com.spring.board.domain;

public class Criteria {
	//Page_num & List for view each Page Class
	//페이지번호와 페이지당 보여줄 목록수 담는 객체
	private int page;
	private int perPageNum;
	
	//default
	public Criteria() {
		this.page=1;
		this.perPageNum=10;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		//이상한 값 넘어오면 그냥 1로 안전장치
		if(page<=0) {
			this.page=1;
			return;
		}
		
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {	//매개변수 값
		
		//default setting - 이상한 값 넘어오면 그냥 10페이지로 안전장치
		if(perPageNum<=0 || perPageNum>100)
			this.perPageNum=10;
		
		this.perPageNum = perPageNum;
	}
	
	//페이지당 가져올 레코드 시작값
	public int getPageStart() {
		return (this.page-1)*perPageNum;	//1page = 0~9 record   (1-1 * 10)
											//2page = 10~19 record (2-1 * 10)
	}
}
