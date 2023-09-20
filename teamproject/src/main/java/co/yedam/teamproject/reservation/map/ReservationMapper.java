package co.yedam.teamproject.reservation.map;

import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;

public interface ReservationMapper {
	List<ReservationVO> reservationSelectList();
	ReservationVO reservationSelect(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
}
