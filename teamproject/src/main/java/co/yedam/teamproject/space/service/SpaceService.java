package co.yedam.teamproject.space.service;

import java.util.List;

public interface SpaceService {
	List<SpaceVO> spaceSelectList();
	SpaceVO spaceSelect(SpaceVO vo);
	int spaceInsert(SpaceVO vo);
	int spaceUpdate(SpaceVO vo);
	int spaceDelete(SpaceVO vo);
}
