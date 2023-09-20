package co.yedam.teamproject.sales.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.sales.map.SalesMapper;
import co.yedam.teamproject.sales.service.SalesService;
import co.yedam.teamproject.sales.service.SalesVO;

public class SalesServiceImpl implements SalesService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	SalesMapper map = sqlSession.getMapper(SalesMapper.class);
	@Override
	public List<SalesVO> salesSelectList() {
		return map.salesSelectList();
	}

	@Override
	public SalesVO salesSelect(SalesVO vo) {
		return map.salesSelect(vo);
	}

	@Override
	public int salesInsert(SalesVO vo) {
		return map.salesInsert(vo);
	}

	@Override
	public int salesUpdate(SalesVO vo) {
		return map.salesUpdate(vo);
	}

	@Override
	public int salesDelete(SalesVO vo) {
		return map.salesDelete(vo);
	}

}
