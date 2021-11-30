package co.nero.WebExam.member.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.nero.WebExam.member.service.MemberMapper;
import co.nero.WebExam.member.service.MemberService;
import co.nero.WebExam.member.service.MemberVO;

@Repository("memberDao")			
public class memberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper map;			

	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberInsert(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberDelete(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberUpdate(vo);
	}

	@Override
	public boolean isCheckId(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.isCheckId(vo);
	}

}
