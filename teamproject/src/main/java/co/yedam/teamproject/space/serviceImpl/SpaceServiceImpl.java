package co.yedam.teamproject.space.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.space.map.SpaceMapper;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;

public class SpaceServiceImpl implements SpaceService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	SpaceMapper map = sqlSession.getMapper(SpaceMapper.class);
	@Override
	public List<SpaceVO> spaceSelectList() {
		return map.spaceSelectList();
	}

	@Override
	public SpaceVO spaceSelect(SpaceVO vo) {
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
	public int spaceDelete(SpaceVO vo) {
		return map.spaceDelete(vo);
	}

}
