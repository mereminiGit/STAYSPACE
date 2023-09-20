package co.yedam.teamproject.cartList.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.cartList.map.CartListMapper;
import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.service.CartListVO;
import co.yedam.teamproject.common.DataSource;

public class CartListServiceImpl implements CartListService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartListMapper map = sqlSession.getMapper(CartListMapper.class);
	
	@Override
	public List<CartListVO> cartListSelectList() {
		return map.cartListSelectList();
	}

	@Override
	public CartListVO cartListSelect(CartListVO vo) {
		return map.cartListSelect(vo);
	}

	@Override
	public int cartListInsert(CartListVO vo) {
		return map.cartListInsert(vo);
	}

	@Override
	public int cartListDelete(CartListVO vo) {
		return map.cartListDelete(vo);
	}

}
