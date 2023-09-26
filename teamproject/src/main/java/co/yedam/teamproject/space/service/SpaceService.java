package co.yedam.teamproject.space.service;
import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;

public interface SpaceService {
	List<SpaceVO> totalSpaceSelectList();
	int spaceSelectCount(); // 공간 카운트
	int spaceSelectCountMember(String memberId); //host space select count
	List<SpaceVO> spaceSelectListMember(String memberId); //host space select
	List<SpaceVO> spaceSelectList(SpaceVO vo);
	List<SpaceVO> spaceSelectDate(ReservationVO vo);
	List<SpaceVO> spaceSelectCity(SpaceVO vo); //연관상품용
	SpaceVO spaceSelect(SpaceVO vo);
	int spaceInsert(SpaceVO vo);
	int spaceUpdate(SpaceVO vo);
	int spaceDelete(int spaceId);
	void spaceHitUpdate(int id);
}