package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {

	
	@Inject
	private BoardService bService; 
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list() {
		
	}
}
