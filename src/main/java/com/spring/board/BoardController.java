package com.spring.board;

import java.util.List;

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
import com.spring.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	/**board로 왔을 경우*/
	
	private static final Logger logger=LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(path="/register", method=RequestMethod.GET)
	public void registGET() throws Exception{
		//게시글 등록 폼 띄우기
		logger.info("register form get...............");
	}
	
	@RequestMapping(path="/register", method=RequestMethod.POST)
	public String registPOST(BoardVO vo, RedirectAttributes rttr)
			throws Exception{
		/** 여기선 DB 레코드와 일치한 속성 값(object)을 insert하는 거니까 Command객체 따로 안 만들고
		 *  BoardVO 사용 */
		//게시글 등록
		logger.info("register post..............");
				
		//비즈니스 로직 호출  ( service.insert() => DB에 삽입ㅇ )
		service.insert(vo);
		
		//입력 성공 message 띄우기
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		//list_page
		return "redirect:/board/listPage";		//send Redirect
		
	}
	
	/** listAll.jsp (x) listPage.jsp (o)  <- Page_divisioned JSP USE */
	
	/*@RequestMapping(path="/listAll", method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("listAll form get....");
		
		List<BoardVO> list=service.getAll();
		model.addAttribute("list", list);
		
	}*/
	@RequestMapping(path="/listPage", method=RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception{
		logger.info("list form each page_num get....");	//페이지 번호별 리스트 요청
		
		List<BoardVO> list=service.listCriteria(cri);
		
		//PageMaker 정보 담기
		PageMaker maker = new PageMaker();
		maker.setCri(cri);
		maker.setTotalCount(service.listCountCriteria(cri));		
		
		model.addAttribute("list", list);
		model.addAttribute("maker", maker);	//maker에만 담고 보내서 부를땐 maker.cri. 으로 호출
		//근데 @ModelAttribute로 cri해서 cri.으로도 부를 수 있다
	}
	
	
	@RequestMapping(path="/read", method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, Model model,
					 @ModelAttribute("cri")Criteria cri) throws Exception{
		logger.info("내용 보기.....");
		
		BoardVO vo=service.select(bno);		//read를 GET방식으로 이동태그한 곳에서 매개변수로 bno값 받기
		model.addAttribute("board", vo);
		
	}
	
	/*read.jsp   // GET - page_read*/
	@RequestMapping(path="/modify", method=RequestMethod.GET)
	public void modify(@RequestParam("bno") int bno, Model model,
					   @ModelAttribute("cri") Criteria cri) throws Exception{
		logger.info("내용 보기.....");
		
		//Board Read
		//수정하기 위한 게시판 글 Bring
		BoardVO vo=service.select(bno);
		model.addAttribute("board", vo);
	}
	
	/*modify.jsp   // POST - active*/
	@RequestMapping(path="/modify", method=RequestMethod.POST)
	public String modify(BoardVO board, RedirectAttributes rttr, Criteria cri) throws Exception{
		logger.info("내용 보기.....");

		//Table Modify
		service.update(board);
		//잠깐 보여주고 사라짐
		rttr.addFlashAttribute("msg", "SUCCESS");	//script - listAll
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		
		return "redirect:listPage";			// =/board/listPage
	}
	
	@RequestMapping(path="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr, Criteria cri) throws Exception{
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
		
		
		return "redirect:/board/listPage";	//redirect로 연결끊고 (Connect Off) main으로 move
	}
}
