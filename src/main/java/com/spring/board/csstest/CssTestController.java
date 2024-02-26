package com.spring.board.csstest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CssTestController {
	
	@RequestMapping(path="/atag", method=RequestMethod.GET)	//url
	public String aTagTest() {
		
		return "/cssTest/a_tag_cssTest";	//jsp location
	}
	
	@RequestMapping(path="jsTest1", method=RequestMethod.GET)
	public String jsTest1() {
		
		return "/cssTest/jsTest1";
	}
	
	@RequestMapping(path="basicMenu", method=RequestMethod.GET)
	public String basicDropDownMenu() {
		
		return "/cssTest/basicDropDownMenu";
	}
	
	@RequestMapping(path="jtest", method=RequestMethod.GET)
	public String jqueryTest() {
		
		return "/cssTest/jQueryTest";
	}
	
	@RequestMapping(path="jtest2", method=RequestMethod.GET)
	public String jqueryTest2() {
		
		return "/cssTest/jQueryTest2";
	}
	
	@RequestMapping(path="slide1", method=RequestMethod.GET)
	public String javascriptTest1() {
		
		return "/cssTest/javascript_manual_slide";
	}
	
	@RequestMapping(path="slide2", method=RequestMethod.GET)
	public String javascriptTest2() {
		
		return "/cssTest/javascript_automatic_slide";
	}
	
	@RequestMapping(path="slide3", method=RequestMethod.GET)
	public String javascriptTest3() {
		
		return "/cssTest/javascript_manual_button_slide";
	}
	
	@RequestMapping(path="slide4", method=RequestMethod.GET)
	public String javascriptTest4() {
		
		return "/cssTest/javascript_manual_image_slide";
	}
	
}
