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
		SpaceService sdao= new SpaceServiceImpl();
		
		SpaceVO svo=new SpaceVO();
		svo.setSpaceName(request.getParameter("spaceName"));
		
		svo=sdao.spaceSelect(svo);
		vo.setSpaceName(svo.getSpaceName());
		vo.setMemberId(svo.getMemberId());
		vo.setSpacePrice(svo.getSpacePrice());
		vo.setSpaceCity(svo.getSpaceCity());
		vo.setSpaceImageMain(svo.getSpaceImageMain());	
		vo.setSpaceStartDate(Date.valueOf(request.getParameter("spaceStartDate")));

		int n = dao.cartListInsert(vo);
		if(n != 0) {
			System.out.println("tjdrhdkljfjadksjflk");
		}
		list=dao.cartListSelectList(vo);
		
		request.setAttribute("cartList", list);
		System.out.println(list);
		
		String path = "space/cart";
		ViewResolve.forward(request, response, path);	
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
