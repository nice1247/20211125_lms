package co.nero.lms.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList(String status);	// 상태값에 따른 리스트 보여주기
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberDelete(MemberVO vo);
	int memberUpdate(MemberVO vo);
	boolean isCheckId(String id); // 존재하면 false, 아니면 true
	
}
