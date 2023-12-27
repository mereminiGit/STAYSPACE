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
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

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
		String id=(String) session.getAttribute("memberId");
		if(id!= null) {
			vo.setMemberId(id); // 세션에 담긴 아이디 불러오기
			if(request.getParameter("spaceId")==null) {
				list = dao.cartListSelectList(vo);
			} else {
				SpaceService sdao = new SpaceServiceImpl();
				SpaceVO svo = new SpaceVO();
				svo.setSpaceId(Integer.parseInt(request.getParameter("spaceId")));
				svo = sdao.spaceSelect(svo);
				
				vo.setSpaceName(svo.getSpaceName());
				vo.setSpacePrice(svo.getSpacePrice());
				vo.setSpaceCity(svo.getSpaceCity());
				vo.setSpaceImageMain(svo.getSpaceImageMain());
				vo.setSpaceStartDate(Date.valueOf(request.getParameter("spaceStartDate")));
				vo.setSpaceId(Integer.valueOf(svo.getSpaceId()));
				vo.setHostId(svo.getMemberId());
				dao.cartListInsert(vo);
				vo=dao.cartReserveIdSelect(vo);
				System.out.println("spaceId="+request.getParameter("spaceId"));
				list.add(dao.cartListSelect(vo));
			}
			MemberVO mvo= new MemberVO();
			MemberService mdao = new MemberServiceImpl();
			mvo.setMemberId(id);
			mvo=mdao.memberSelect(mvo);
			request.setAttribute("member", mvo);
			request.setAttribute("cart", list);
			String path = "space/checkout";
			ViewResolve.forward(request, response, path);	
		} else {
			String path = "main/account";
			ViewResolve.forward(request, response, path);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
