package co.yedam.teamproject.reservation.serviceImpl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.reservation.map.ReservationMapper;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;

public class ReservationServiceImpl implements ReservationService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ReservationMapper map = sqlSession.getMapper(ReservationMapper.class);

	@Override
	public List<ReservationVO> reservationSelectList() {
		return map.reservationSelectList();
	}

	@Override
	public ReservationVO reservationSelect(ReservationVO vo) {
		return map.reservationSelect(vo);
	}

	@Override
	public int reservationInsert(ReservationVO vo) {
		return map.reservationInsert(vo);
	}

	@Override
	public int reservationDelete(ReservationVO vo) {
		return map.reservationDelete(vo);
	}

	@Override
	public List<ReservationVO> reservationSelectMember(ReservationVO vo) { //Id 넘겨받는 select
		return map.reservationSelectMember(vo);
	}

	@Override
	public int reservationUpdate(ReservationVO vo) {
		return map.reservationUpdate(vo);
	}

	@Override
	public List<ReservationVO> reservationSelectListSpace(String spaceId) {
		return map.reservationSelectListSpace(spaceId);
	}

	@Override
	public List<ReservationVO> reservationSelectHost(ReservationVO vo) {
		return map.reservationSelectHost(vo);
	}

	@Override
	public List<ReservationVO> reservationSelectListMember(String memberId, int spaceId) {

		return map.reservationSelectListMember(memberId, spaceId);
	}

	@Override

	public int reservationListUpdate(ReservationVO vo) {
		return map.reservationListUpdate(vo);
	}

	@Override
	public int reservationHostTotalCount(String hostId) {
		return map.reservationHostTotalCount(hostId);
	}

	@Override
	public int reservationMemberTotalCount(String memberId) {
		return map.reservationMemberTotalCount(memberId);
	}
  @Override
	public List<ReservationVO> reservationSelectListCheck() {
		return map.reservationSelectListCheck();

	}

	@Override
	public int reservationCountSpace(int spaceId) {
		return map.reservationCountSpace(spaceId);
  }
  @Override
	public List<ReservationVO> reservationSelectDate(ReservationVO vo) {
		return map.reservationSelectDate(vo);
	}

@Override
public List<ReservationVO> reservationSelectListHost(String hostId) {
	return map.reservationSelectListHost(hostId);
}

}
