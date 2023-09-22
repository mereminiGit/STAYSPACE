package co.yedam.teamproject.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.member.map.MemberMapper;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;

public class MemberServiceImpl implements MemberService {
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	
	// 멤버 전체 조회
	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	// 멤버 조회
	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	// 멤버 등록
	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	// 멤버 수정
	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	// 멤버 삭제
	@Override
	public int memberDelete(String memberId) {
		return map.memberDelete(memberId);

	}

	// 멤버 이메일 조회 (아이디, 비밀번호 변경시 사용)
	@Override
	public MemberVO memberSelectEmail(MemberVO vo) {
		return map.memberSelectEmail(vo);

	}

}
