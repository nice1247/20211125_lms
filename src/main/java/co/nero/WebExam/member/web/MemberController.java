package co.nero.WebExam.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.nero.WebExam.member.service.MemberService;
import co.nero.WebExam.member.service.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberDao;

	@RequestMapping("/login.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/loginGo.do")
	public String loginGo(MemberVO vo, HttpSession session, Model model, HttpServletRequest request) {
		session = request.getSession();
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo = memberDao.memberSelect(vo);
		if(vo != null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("name", vo.getName());
		}
		return "main/main";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		session.invalidate();
		return "main/main";
	}
	
	@RequestMapping("/gojoin.do")
	public String gojoin() {
		return "member/join";
	}
	
	@RequestMapping(value="/ajaxIdCheck.do", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxIdCheck(MemberVO vo, HttpServletRequest request) {
		vo.setId(request.getParameter("chkid"));
		boolean b = memberDao.isCheckId(vo);
		String chk = "1";
		if(b) {
			chk = "0";
		}
		return chk;
	}
	
	@RequestMapping("/memberInfo.do")
	public String memberInfo(MemberVO vo, HttpSession session, HttpServletRequest request) {
		session = request.getSession();
		vo.setId((String) session.getAttribute("id"));
		request.setAttribute("member", memberDao.memberSelect(vo));
		return "member/memberInfo";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo, HttpSession session, HttpServletRequest request) {
		session = request.getSession();
		vo.setId(request.getParameter("id"));
		int n = memberDao.memberDelete(vo);
		if(n != 0) {
			session.invalidate();
		}
		return "main/main";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo, HttpServletRequest request) {
		vo.setId(request.getParameter("id"));
		request.setAttribute("member", memberDao.memberSelect(vo));
		return "member/memberUpdateForm";
	}
	
	@RequestMapping("/memberEditSave.do")
	public String memberEditSave(MemberVO vo, HttpServletRequest request) {
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
	    vo.setName(request.getParameter("name"));
	    vo.setTel(request.getParameter("tel"));
	    vo.setAddress(request.getParameter("address"));
		vo.setAuthor("user");
		memberDao.memberUpdate(vo);
		return "redirect:memberInfo.do";
	}
	
	
}
