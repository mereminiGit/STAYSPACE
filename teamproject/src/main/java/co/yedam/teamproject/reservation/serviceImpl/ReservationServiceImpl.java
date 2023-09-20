package co.yedam.teamproject.reservation.serviceImpl;

import java.util.List;

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

}
