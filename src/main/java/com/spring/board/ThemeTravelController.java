package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/themeTravel")	//the
public class ThemeTravelController {
	
	@RequestMapping(path="/theme", method=RequestMethod.GET)
	public void ThemeTravel() {
		
	}
	@RequestMapping(path="/theme", method=RequestMethod.POST)
	public void ThemeTravelPOST() {
		
	}
	
	@RequestMapping(path="/waterpark", method=RequestMethod.GET)
	public void waterpark() {
		
	}
	
	@RequestMapping(path="/skiBoard", method=RequestMethod.GET)
	public void skiBoard() {
		
	}
	@RequestMapping(path="/spa", method=RequestMethod.GET)
	public void spa() {
		
	}
}
