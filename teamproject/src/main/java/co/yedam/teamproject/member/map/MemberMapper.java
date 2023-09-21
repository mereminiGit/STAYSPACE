package co.yedam.teamproject.member.map;

import java.util.List;

import co.yedam.teamproject.member.service.MemberVO;

public interface MemberMapper {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(String memberId);
}
