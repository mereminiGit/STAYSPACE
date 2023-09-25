package co.yedam.teamproject.cartList.service;

import java.util.List;

public interface CartListService {
	List<CartListVO> cartListSelectList(CartListVO vo);
	CartListVO cartListSelect(CartListVO vo);
	List<CartListVO> cartDateSelectList(CartListVO vo);
	int cartListInsert(CartListVO vo);
	int cartListDelete(CartListVO vo);
}
