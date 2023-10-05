package co.yedam.teamproject.space.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.space.map.SpaceMapper;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;

public class SpaceServiceImpl implements SpaceService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	SpaceMapper map = sqlSession.getMapper(SpaceMapper.class);
	@Override
	public List<SpaceVO> spaceSelectList(SpaceVO vo) {
		return map.spaceSelectList(vo);
	}

	@Override
	public SpaceVO spaceSelect(SpaceVO vo) {
		map.spaceHitUpdate(vo.getSpaceId());
		return map.spaceSelect(vo);
	}

	@Override
	public int spaceInsert(SpaceVO vo) {
		return map.spaceInsert(vo);
	}

	@Override
	public int spaceUpdate(SpaceVO vo) {
		return map.spaceUpdate(vo);
	}

	@Override
	public int spaceDelete(int spaceId) {
		return map.spaceDelete(spaceId);
	}

	@Override
	public List<SpaceVO> totalSpaceSelectList() {
		return map.totalSpaceSelectList();
	}

	@Override
	public void spaceHitUpdate(int id) {
		
	}

	@Override
	public int spaceSelectCount() {
		return map.spaceSelectCount();
	}

	@Override
	public List<SpaceVO> spaceSelectListMember(String memberId) {
		return map.spaceSelectListMember(memberId);
	}

	@Override
	public int spaceSelectCountMember(String memberId) {
		return map.spaceSelectCountMember(memberId);
	}

	@Override
	public List<SpaceVO> spaceSelectDate(ReservationVO vo) {
		return map.spaceSelectDate(vo);
	}

	@Override
	public List<SpaceVO> spaceSelectCity(SpaceVO vo) {
		return map.spaceSelectCity(vo);
	}
}
