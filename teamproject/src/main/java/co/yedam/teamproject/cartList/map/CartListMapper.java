package co.yedam.teamproject.cartList.map;

import java.util.List;

import co.yedam.teamproject.cartList.service.CartListVO;

public interface CartListMapper {
	List<CartListVO> cartListSelectList(CartListVO vo);
	CartListVO cartListSelect(CartListVO vo);
	CartListVO cartReserveIdSelect(CartListVO vo);
	int cartListInsert(CartListVO vo);
	int cartListDelete(CartListVO vo);
}
