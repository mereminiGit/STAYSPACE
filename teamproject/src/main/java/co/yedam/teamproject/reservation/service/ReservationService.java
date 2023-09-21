package co.yedam.teamproject.reservation.service;

import java.util.List;

public interface ReservationService {
	List<ReservationVO> reservationSelectList();
	ReservationVO reservationSelect(ReservationVO vo);
	List<ReservationVO> reservationSelectMember(ReservationVO vo); //memberId 넘겨받는 select
	int resevaionUpdate(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
}