package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservationController {

	@RequestMapping(path="fast", method=RequestMethod.GET)
	public String fast() {
		
		return "/reservation/fast";
	}
}
