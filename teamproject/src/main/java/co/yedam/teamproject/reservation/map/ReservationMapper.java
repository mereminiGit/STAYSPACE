package co.yedam.teamproject.reservation.map;

import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;

public interface ReservationMapper {
	List<ReservationVO> reservationSelectList();
	List<ReservationVO> reservationSelectListSpace(String spaceId);//공간Id로 Select
	List<ReservationVO> reservationSelectListMember(String memberId); // memberId로 리스트 받기
	ReservationVO reservationSelect(ReservationVO vo);
	List<ReservationVO> reservationSelectMember(ReservationVO vo);
	List<ReservationVO> reservationSelectHost(ReservationVO vo);
	int reservationUpdate(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
}
