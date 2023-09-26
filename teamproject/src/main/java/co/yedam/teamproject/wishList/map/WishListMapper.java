package co.yedam.teamproject.wishList.map;

import java.util.List;

import co.yedam.teamproject.wishList.service.WishListVO;

public interface WishListMapper {
	List<WishListVO> wishListSelectList(WishListVO vo);
	WishListVO wishListSelect(WishListVO vo);
	int wishListInsert(WishListVO vo);
	int wishListUpdate(WishListVO vo);
	int wishListDelete(WishListVO vo);
}
