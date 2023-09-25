package co.yedam.teamproject.space.service;
import java.util.List;

import co.yedam.teamproject.space.service.SpaceVO;

public interface SpaceService {
	List<SpaceVO> totalSpaceSelectList();
	int spaceSelectCount(); // 공간 카운트
	int spaceSelectCountMember(String memberId); //host space select count
	List<SpaceVO> spaceSelectListMember(String memberId); //host space select
	List<SpaceVO> spaceSelectList(SpaceVO vo);
	SpaceVO spaceSelect(SpaceVO vo);
	int spaceInsert(SpaceVO vo);
	int spaceUpdate(SpaceVO vo);
	int spaceDelete(String spaceName);
	void spaceHitUpdate(int id);
}