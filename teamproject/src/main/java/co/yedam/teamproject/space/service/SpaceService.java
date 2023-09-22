package co.yedam.teamproject.space.service;
import java.util.List;

import co.yedam.teamproject.space.service.SpaceVO;

public interface SpaceService {
	List<SpaceVO> spaceSelectList(SpaceVO vo);
	List<SpaceVO> totalSpaceSelectList();
	SpaceVO spaceSelect(SpaceVO vo);
	int spaceInsert(SpaceVO vo);
	int spaceUpdate(SpaceVO vo);
	int spaceDelete(String spaceName);
}