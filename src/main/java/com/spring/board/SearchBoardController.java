package com.spring.board;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.board.domain.BoardVO;
import com.spring.board.domain.Criteria;
import com.spring.board.domain.PageMaker;
import com.spring.board.domain.SearchCriteria;
import com.spring.board.service.BoardService;

@Controller
@RequestMapping("/sboard/*")
public class SearchBoardController {
	/**sboard로 왔을 경우 search 기능 추가*/
	
	private static final Logger logger=LoggerFactory.getLogger(SearchBoardController.class);
	
	@Inject
	private BoardService service;
	
	
	//searchType & 검색 키워드를 받는 listPage
	@RequestMapping(path="/listPage", method=RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		/**cri란 이름으로 jsp에 보냄*/
		
		//페이지 번호와 페이지당 목록 수를 이용하여 리스트 가져오기
		model.addAttribute("list", service.listSearch(cri));
		
		//게시판 전체 리스트 수를 기준으로 PageMaker 객체 생성
		PageMaker maker=new PageMaker();
		maker.setCri(cri);		//SearchCriteria cri를 setCri에 매개변수로 넘김
		maker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("maker", maker);
		
		
	}	
	
	
	@RequestMapping(path="/read", method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, Model model,
					 @ModelAttribute("cri")SearchCriteria cri) throws Exception{
		logger.info("내용 보기.....");
		
		BoardVO vo=service.select(bno);		//read를 GET방식으로 이동태그한 곳에서 매개변수로 bno값 받기
		model.addAttribute("board", vo);
		
	}
	
	
	@RequestMapping(path="/modify", method=RequestMethod.GET)
	public void modify(@RequestParam("bno") int bno, Model model,
					 @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		logger.info("내용 수정.....");
		
		BoardVO vo=service.select(bno);		//read를 GET방식으로 이동태그한 곳에서 매개변수로 bno값 받기
		model.addAttribute("board", vo);
		logger.info("수정시 cri "+cri.getKeyword());
	}
	
	@RequestMapping(path="/modify", method=RequestMethod.POST)
	public String modify(BoardVO board, RedirectAttributes rttr, SearchCriteria cri) throws Exception{
		logger.info("내용 보기.....");
		logger.info("검색 타입: "+cri.getSearchType());
		logger.info("검색 키워드: "+cri.getKeyword());

		//Table Modify
		service.update(board);
		
		//addFlashAttribute: 잠깐 보여주고 사라짐
		rttr.addFlashAttribute("msg", "SUCCESS");	//script - listAll

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:listPage";			// =/board/listPage
	}
	
	@RequestMapping(path="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr, SearchCriteria cri) throws Exception{
		logger.info("내용 삭제.....");

		service.delete(bno);
		rttr.addFlashAttribute("msg", "SUCCESS");	//script - listAll
		
		/** Page 정보 유지 */
		// - forward가 아닌
		//	 sendRedirect로 보낼경우 정보를 유지하고 싶으면 Session에 담아야 한다
		// - FlashAttribute처럼 잠깐 사라지는 게 아니라 계속 유지해야해서 -> Session역할
		//	 그냥 Attribute에 담는다
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());	//지우고 끝나니까 ModelAttribute필요x
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/listPage";	//redirect로 연결끊고 (Connect Off) main으로 move
	}
	
}
