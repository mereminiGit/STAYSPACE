package co.yedam.teamproject.member.map;

import java.util.List;

import co.yedam.teamproject.member.service.MemberVO;

public interface MemberMapper {
	List<MemberVO> memberSelectList();		// 멤버 전체(목록) 조회
	MemberVO memberSelect(MemberVO vo);		// 멤버 상세 조회
	MemberVO memberSelectEmail(MemberVO vo);// 멤버 이메일 체크 (아이디, 비밀번호 찾기)
	int memberInsert(MemberVO vo);			// 멤버 등록
	int memberUpdate(MemberVO vo);			// 멤버 수정
	int memberDelete(MemberVO vo);			// 멤버 삭제
}
