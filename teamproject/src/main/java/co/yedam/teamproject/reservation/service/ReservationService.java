package co.yedam.teamproject.reservation.service;

import java.util.List;

public interface ReservationService {
	List<ReservationVO> reservationSelectList();
	List<ReservationVO> reservationSelectListSpace(String spaceId);
	List<ReservationVO> reservationSelectListMember(String memberId, int spaceId); // memberId로 리스트 받기
	List<ReservationVO> reservationSelectListHost(String hostId);
	List<ReservationVO> reservationSelectListCheck(); //예약승인된 리스트 뽑아내기
	ReservationVO reservationSelect(ReservationVO vo);
	List<ReservationVO> reservationSelectMember(ReservationVO vo); //memberId 넘겨받는 select
	List<ReservationVO> reservationSelectHost(ReservationVO vo); //hostId넘겨받는 select
	int reservationCountSpace(int spaceId);
	List<ReservationVO> reservationSelectDate(ReservationVO vo);
	int reservationInsert(ReservationVO vo);
	int reservationDelete(ReservationVO vo);
	int reservationUpdate(ReservationVO vo);
	int reservationListUpdate(ReservationVO vo);
	int reservationHostTotalCount(String hostId);
	int reservationMemberTotalCount(String memberId);
}