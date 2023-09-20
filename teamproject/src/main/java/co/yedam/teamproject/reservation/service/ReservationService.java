package co.yedam.teamproject.reservation.service;

import java.util.List;

public interface ReservationService {
	List<ReservationVO> reservationSelectList();
	ReservationVO reservationSelect(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
}