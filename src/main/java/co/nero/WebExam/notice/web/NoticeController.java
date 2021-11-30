package co.nero.WebExam.notice.web;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.nero.WebExam.member.service.MemberService;
import co.nero.WebExam.member.service.MemberVO;
import co.nero.WebExam.notice.service.NoticeService;
import co.nero.WebExam.notice.service.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeDao;
	@Autowired
	private MemberService memberDao;
	
	@RequestMapping("/noticeList.do")
	public String noticeList(HttpServletRequest request) {
		request.setAttribute("notices", noticeDao.noticeSelectList());
		return "notice/noticeList";
	}
	
	@RequestMapping("/noticeRead.do")
	public String noticeRead(MemberVO mvo, NoticeVO nvo, HttpServletRequest request, HttpSession session) {
		nvo.setNo(Integer.valueOf(request.getParameter("no")));
		request.setAttribute("notice", noticeDao.noticeSelect(nvo));
		session = request.getSession();
		mvo.setId((String) session.getAttribute("id"));
		request.setAttribute("member", memberDao.memberSelect(mvo));
		return "notice/noticeRead";
	}
	
	@RequestMapping("/noticeForm.do")
	public String noticeForm() {
		return "notice/noticeForm";
	}
	
	@RequestMapping("/noticeResister")
	public String noticeResister(NoticeVO vo, HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		vo.setId((String) session.getAttribute("id"));
		vo.setName((String) session.getAttribute("name"));
		vo.setWdate(Date.valueOf(request.getParameter("wdate")));
		vo.setTitle(request.getParameter("title"));
		vo.setSubject(request.getParameter("subject"));
		noticeDao.noticeInsert(vo);
		
		return "redirect:noticeList.do";
	}
	
	@RequestMapping(value = "/noticeDelete", method = RequestMethod.GET)
	public String noticeDelete(NoticeVO vo, HttpServletRequest request) {
		vo.setNo(Integer.valueOf(request.getParameter("no")));
		noticeDao.noticeDelete(vo);
		
		return "redirect:noticeList.do";
	}
	
	
	@RequestMapping("/noticeUpdate.do")
	public String noticeUpdate(NoticeVO vo, HttpServletRequest request) {
		vo.setNo(Integer.valueOf(request.getParameter("no")));
		request.setAttribute("notice", noticeDao.noticeSelect(vo));
		return "notice/noticeUpdateForm";
	}
	
	@RequestMapping("/noticeEditSave.do")
	public String noticeEditSave(NoticeVO vo, HttpServletRequest request) {
		vo.setNo(Integer.valueOf(request.getParameter("no")));
		vo.setTitle(request.getParameter("title"));
		vo.setSubject(request.getParameter("subject"));
		noticeDao.noticeUpdate(vo);
		
		return "redirect:noticeList.do";
	}
	

}
