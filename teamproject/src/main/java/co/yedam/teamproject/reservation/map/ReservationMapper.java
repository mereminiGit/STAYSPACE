package co.yedam.teamproject.reservation.map;

import java.util.List;

import co.yedam.teamproject.reservation.service.ReservationVO;

public interface ReservationMapper {
	List<ReservationVO> reservationSelectList();
	List<ReservationVO> reservationSelectListSpace(String spaceId);//공간Id로 Select
	List<ReservationVO> reservationSelectListMember(String memberId); // memberId로 리스트 받기
	List<ReservationVO> reservationSelectMember(ReservationVO vo);
	List<ReservationVO> reservationSelectHost(ReservationVO vo);
	List<ReservationVO> reservationSelectListCheck(); //예약승인된 리스트 뽑아내기
	ReservationVO reservationSelect(ReservationVO vo);
	int reservationCountSpace(int spaceId);
	List<ReservationVO> reservationSelectDate(ReservationVO vo);
	int reservationUpdate(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
	int reservationListUpdate(ReservationVO vo);
	int reservationHostTotalCount(String hostId);
	int reservationMemberTotalCount(String memberId);
}
