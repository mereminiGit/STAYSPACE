package co.yedam.teamproject.wishList.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.teamproject.common.DataSource;
import co.yedam.teamproject.wishList.map.WishListMapper;
import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;

public class WishListServiceImpl implements WishListService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	WishListMapper map = sqlSession.getMapper(WishListMapper.class);
	
	@Override
	public List<WishListVO> wishListSelectList(WishListVO vo) {
		return map.wishListSelectList(vo);
	}

	@Override
	public WishListVO wishListSelect(WishListVO vo) {
		return map.wishListSelect(vo);
	}

	@Override
	public int wishListInsert(WishListVO vo) {
		return map.wishListInsert(vo);
	}

	@Override
	public int wishListUpdate(WishListVO vo) {
		return map.wishListUpdate(vo);
	}

	@Override
	public int wishListDelete(WishListVO vo) {
		return map.wishListDelete(vo);
	}

}
