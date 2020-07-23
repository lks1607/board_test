package com.project.test;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.test.dao.BoardDao;
import com.project.test.dto.BoardDto;
import com.project.test.util.PageVO;

import net.sf.json.JSONArray;

@Controller
public class TestController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("search_gb")
	public @ResponseBody JSONArray ajax_search(HttpServletRequest request) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		String type=request.getParameter("type");
		String key=request.getParameter("key");
				
		ArrayList<BoardDto> dto=dao.getlist_search(type, key);
		JSONArray jsonArray=JSONArray.fromObject(dto);
		
		return jsonArray;
	}
	
	@RequestMapping("a_gb")
	public @ResponseBody JSONArray ajax_gb(HttpServletRequest request, Model model, PageVO pageVo) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
//		페이징 위한 총 게시글 수
		int total=dao.counttotal();
		String strPage=request.getParameter("page");		
		if(strPage==null || strPage.equals(""))
			strPage="1";
		
		int page=Integer.parseInt(strPage);
		pageVo.setPage(page);
		pageVo.pageCalculate(total);
		
		int rowStart=pageVo.getRowStart();
		int rowEnd=pageVo.getRowEnd();
				
//		게시판목록
		ArrayList<BoardDto> dto=dao.getlist(rowStart, rowEnd);
		JSONArray jsonArray=JSONArray.fromObject(dto);
		
		return jsonArray;
	}
	
	@RequestMapping("gb")
	public String gb(HttpServletRequest request, Model model, PageVO pageVo) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
//		페이징 위한 총 게시글 수
		int total=dao.counttotal();
		String strPage=request.getParameter("page");		
		if(strPage==null || strPage.equals(""))
			strPage="1";
		
		int page=Integer.parseInt(strPage);
		pageVo.setPage(page);
		pageVo.pageCalculate(total);
		
		int rowStart=pageVo.getRowStart();
		int rowEnd=pageVo.getRowEnd();
				
//		게시판목록
		ArrayList<BoardDto> dto=dao.getlist(rowStart, rowEnd);
		JSONArray jsonArray=JSONArray.fromObject(dto);
		model.addAttribute("list", dto);
		model.addAttribute("pageVo",pageVo);
		model.addAttribute("json", jsonArray);
		
		return "board_grid";
	}
	
	@RequestMapping("copy")
	public String copy() {
		return "copy";
	}
	
	@RequestMapping("file")
	public String file() {
		return "file";
	}
	
	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("grid")
	public String grid() {
		return "grid";
	}
	
	@RequestMapping("board")
	public String board(HttpServletRequest request, Model model, PageVO pageVo) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
//		페이징 위한 총 게시글 수
		int total=dao.counttotal();
		String strPage=request.getParameter("page");		
		if(strPage==null || strPage.equals(""))
			strPage="1";
		
		int page=Integer.parseInt(strPage);
		pageVo.setPage(page);
		pageVo.pageCalculate(total);
		
		int rowStart=pageVo.getRowStart();
		int rowEnd=pageVo.getRowEnd();
				
//		게시판목록
		ArrayList<BoardDto> dto=dao.getlist(rowStart, rowEnd);
		JSONArray jsonArray=JSONArray.fromObject(dto);
		model.addAttribute("list", dto);
		model.addAttribute("pageVo",pageVo);
		model.addAttribute("json", jsonArray);
		
		return "board";
	}
	
	@RequestMapping("content_view")
	public String content_view(HttpServletRequest request, Model model) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		int bno=Integer.parseInt(request.getParameter("bno"));
		
//		상세글 보기
		BoardDto dto=dao.getcontent(bno);
		model.addAttribute("content", dto);
		
		return "content_view";
	}
	
	@RequestMapping("write_view")
	public String write_view() {
		return "write_view";
	}
	
	@RequestMapping("write")
	public String write(HttpServletRequest request) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		String title=request.getParameter("title");
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		
		
//		글작성
		dao.write(title, writer, content);
			
		return "redirect:gb";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		int bno=Integer.parseInt(request.getParameter("bno"));
		
//		글삭제
		dao.delete(bno);
		
		return "redirect:gb";
	}
	
	@RequestMapping("modify_view")
	public String modift_view(HttpServletRequest request, Model model) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		int bno=Integer.parseInt(request.getParameter("bno"));
		
//		수정화면
		BoardDto dto=dao.getcontent(bno);
		model.addAttribute("content", dto);
		
		return "modify_view";
	}
	
	@RequestMapping("modify")
	public String modify(HttpServletRequest request) {
		BoardDao dao=sqlSession.getMapper(BoardDao.class);
		int bno=Integer.parseInt(request.getParameter("bno"));
		String title=request.getParameter("title");
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		
		
//		게시글 수정
		dao.modify(title, writer, content, bno);
		
		return "redirect:gb";
	}
	
	/*
	 * @RequestMapping("board_search") public String board_search(HttpServletRequest
	 * request, Model model, PageVO pageVo) { BoardDao
	 * dao=sqlSession.getMapper(BoardDao.class); String
	 * key=request.getParameter("key");
	 * 
	 * // 페이징 위한 총 게시글 수 int total=dao.counttotal_search(key); String
	 * strPage=request.getParameter("page"); if(strPage==null || strPage.equals(""))
	 * strPage="1";
	 * 
	 * int page=Integer.parseInt(strPage); pageVo.setPage(page);
	 * pageVo.pageCalculate(total);
	 * 
	 * int rowStart=pageVo.getRowStart(); int rowEnd=pageVo.getRowEnd();
	 * 
	 * // 검색글 목록 ArrayList<BoardDto> dto=dao.getlist_search(key);
	 * model.addAttribute("list", dto); model.addAttribute("pageVo",pageVo);
	 * 
	 * return "board"; }
	 */
}
