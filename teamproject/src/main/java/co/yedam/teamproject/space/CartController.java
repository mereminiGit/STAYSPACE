package co.yedam.teamproject.space;

import java.io.IOException;
import java.sql.Date;
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
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

@WebServlet("/cart.do")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartListService dao= new CartListServiceImpl();
		CartListVO vo=new CartListVO();
		List<CartListVO> list= new ArrayList<>();
		HttpSession session = request.getSession();
		/* if(session.getAttribute("memberId")!= null) { */
			SpaceService sdao= new SpaceServiceImpl();
			SpaceVO svo=new SpaceVO();
			svo.setSpaceId(Integer.parseInt(request.getParameter("spaceId")));
			svo=sdao.spaceSelect(svo);
			
			vo.setSpaceName(svo.getSpaceName());
			vo.setMemberId(svo.getMemberId());
//			vo.setMemberId((String) session.getAttribute("memberId")); //세션에 담긴 아이디 불러오기
			vo.setSpacePrice(svo.getSpacePrice());
			vo.setSpaceCity(svo.getSpaceCity());
			vo.setSpaceImageMain(svo.getSpaceImageMain());	
			vo.setSpaceStartDate(Date.valueOf(request.getParameter("spaceStartDate")));
			
			dao.cartListInsert(vo);
			list=dao.cartListSelectList(vo);
			
			request.setAttribute("cartList", list);
			
			String path = "space/cart";
			ViewResolve.forward(request, response, path);	
			/*
			 * } else { String path="main/account"; ViewResolve.forward(request, response,
			 * path); }
			 */
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
