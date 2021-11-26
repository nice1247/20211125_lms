package co.nero.lms.member.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.nero.lms.member.service.MemberMapper;
import co.nero.lms.member.service.MemberService;
import co.nero.lms.member.service.MemberVO;

@Repository("memberDao")			// IoC컨테이너에 memberDao로 저장
public class memberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper map;			// MemberMapper를 map이라는 이름으로 불러와, dao를 의존주입하는것

	@Override
	public List<MemberVO> memberSelectList(String status) {
		// TODO Auto-generated method stub
		return map.memberSelectList(status);
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
	public boolean isCheckId(String id) {
		// TODO Auto-generated method stub
		return map.isCheckId(id);
	}

}
