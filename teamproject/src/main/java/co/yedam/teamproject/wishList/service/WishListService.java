package co.yedam.teamproject.wishList.service;

import java.util.List;

public interface WishListService {
	List<WishListVO> wishListSelectList(WishListVO vo);
	WishListVO wishListSelect(WishListVO vo);
	int wishListInsert(WishListVO vo);
	int wishListUpdate(WishListVO vo);
	int wishListDelete(WishListVO vo);
}
