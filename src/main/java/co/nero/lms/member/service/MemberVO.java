package co.nero.lms.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String tel;
	private String address;
	private String author;
	private String status;	// 상태, 사용중인지 삭제됐는지...(if insert > C, if delete > D, if update > U)
}
