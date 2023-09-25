package co.yedam.teamproject.space;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.cartList.service.CartListService;
import co.yedam.teamproject.cartList.service.CartListVO;
import co.yedam.teamproject.cartList.serviceImpl.CartListServiceImpl;
import co.yedam.teamproject.common.ViewResolve;

@WebServlet("/checkout.do")
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckoutController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartListService dao= new CartListServiceImpl();
		CartListVO vo=new CartListVO();
		List<CartListVO> list= new ArrayList<>();
		
		HttpSession session = request.getSession();
		if(session.getAttribute("memberId")!= null) {
			vo.setMemberId((String) session.getAttribute("memberId"));
			list=dao.cartListSelectList(vo);
			request.setAttribute("cart", list);
			String path = "space/checkout";
			ViewResolve.forward(request, response, path);	
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
