package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {
	
	/*처음 들어옴*/
	@RequestMapping(path="/index", method=RequestMethod.GET)
	public void index() {
		System.out.println("INDEX 요청");
	}
	
	/*로그인 후 등*/
	@RequestMapping(path="/index", method=RequestMethod.POST)
	public String indexPOST() {
		
		return "redirect:/index";
	}
	
	/*sboard로 이동*/			//경로가 listPage로 들어왔다면
	@RequestMapping(path="/listPage", method=RequestMethod.POST)
	public String sboard() {
		
		return "/sboard/listPage";
	}
	
}
