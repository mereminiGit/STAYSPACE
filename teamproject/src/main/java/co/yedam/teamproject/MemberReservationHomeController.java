package co.yedam.teamproject;

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
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;
import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;
import co.yedam.teamproject.wishList.serviceImpl.WishListServiceImpl;

//마이페이지(예약목록, 위시리스트, 회원정보수정)

@WebServlet("/memberreservationhome.do")
public class MemberReservationHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberReservationHomeController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// member 가져오기
		MemberService daoMember = new MemberServiceImpl();
		MemberVO voMember = new MemberVO();
		HttpSession session = request.getSession();
		voMember.setMemberId((String) session.getAttribute("memberId"));
		voMember = daoMember.memberSelect(voMember);
		request.setAttribute("m", voMember);

		// admin,host,user page 연결
		if (voMember.getMemberCheck().equals("admin")) {
			response.sendRedirect("adminhome.do");
		} else if (voMember.getMemberCheck().equals("host")) {
			response.sendRedirect("businesshome.do");
		} else {
			
			// 예약내역 & 예약내역 total

			ReservationService dao = new ReservationServiceImpl();
			ReservationVO vo = new ReservationVO();

			vo.setMemberId((String) session.getAttribute("memberId")); // 세션에 저장된 아이디를 들고와야함.

			List<ReservationVO> reserve = new ArrayList<ReservationVO>();
			System.out.println(request.getParameter("name") + "!!!!!!!!!");

			// WishList
			WishListService daoWish = new WishListServiceImpl();
			List<WishListVO> wishList = new ArrayList<WishListVO>();
			WishListVO voWish = new WishListVO();
			voWish.setMemberId((String) session.getAttribute("memberId"));
			wishList = daoWish.wishListSelectList(voWish);
			request.setAttribute("wishList", wishList);

			// 결제내역..?

			if(request.getParameter("name")!=null) {
			CartListService cdao = new CartListServiceImpl();
			CartListVO cvo = new CartListVO();
			cvo.setMemberId((String) session.getAttribute("memberId"));
			List<CartListVO> list = new ArrayList<>();
			if (Integer.parseInt(request.getParameter("name"))> 1) { // 예약입력
				list = cdao.cartListSelectList(cvo);
			} else if(Integer.parseInt(request.getParameter("name")) == 1){
				cvo.setSpaceId(Integer.parseInt(request.getParameter("Id")));
				cvo.setSpaceStartDate(Date.valueOf(request.getParameter("spaceStartDate")));
				cvo=cdao.cartReserveIdSelect(cvo);
				System.out.println(cvo);
				list.add(cdao.cartListSelect(cvo));
			}
			System.out.println("list="+list);
			for (CartListVO c : list) {
				vo.setSpaceName(c.getSpaceName());
				vo.setReserveStartDate(c.getSpaceStartDate());
				vo.setReservePrice(c.getSpacePrice());
				vo.setReserveCheck(0);
				vo.setReserveId(c.getReserveId());
				vo.setReserveImg(c.getSpaceImageMain());
				vo.setSpaceId(c.getSpaceId());
				vo.setHostId(c.getHostId());
				dao.reservationInsert(vo);
				cdao.cartListDelete(c);
			}
			}
			// vo.setMemberId("jiwon"); // 세션에 저장된 아이디를 들고와야함.

			int num = dao.reservationMemberTotalCount(vo.getMemberId());
			request.setAttribute("count", num);
			System.out.println("Mcount>>>" + num);
			reserve = dao.reservationSelectMember(vo);
			request.setAttribute("reserve", reserve);
			System.out.println("menuhome.do reserve 찍어봄");
			System.out.println(reserve);

			String path = "member/membermypage";
			ViewResolve.forward(request, response, path);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
