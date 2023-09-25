package co.yedam.teamproject.reservation.map;

import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;

public interface ReservationMapper {
	List<ReservationVO> reservationSelectList();
	List<ReservationVO> reservationSelectListSpace(String spaceId);//공간Id로 Select
	ReservationVO reservationSelect(ReservationVO vo);
	List<ReservationVO> reservationSelectMember(ReservationVO vo);
	int reservationUpdate(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
}
