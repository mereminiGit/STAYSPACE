package co.yedam.teamproject.space.map;
import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.space.service.SpaceVO;

public interface SpaceMapper {
	List<SpaceVO> totalSpaceSelectList();
	int spaceSelectCount(); // 공간 카운트
	int spaceSelectCountMember(String memberId); //host space select count
	List<SpaceVO> spaceSelectListMember(String memberId); //host space select
	List<SpaceVO> spaceSelectList(SpaceVO vo);
	List<SpaceVO> spaceSelectDate(ReservationVO vo); // 예약된 방 제외 리스트
	List<SpaceVO> spaceSelectCity(SpaceVO vo); //연관상품용
	SpaceVO spaceSelect(SpaceVO vo);
	int spaceInsert(SpaceVO vo);
	int spaceUpdate(SpaceVO vo);
	int spaceDelete(String spaceName);
	void spaceHitUpdate(int id);
}