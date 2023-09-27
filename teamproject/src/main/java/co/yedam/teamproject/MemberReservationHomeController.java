package co.yedam.teamproject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

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
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.wishList.service.WishListService;
import co.yedam.teamproject.wishList.service.WishListVO;
import co.yedam.teamproject.wishList.serviceImpl.WishListServiceImpl;

/**
 * Servlet implementation class MemberHome
 */
@WebServlet("/memberreservationhome.do")
public class MemberReservationHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MemberReservationHomeController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationService dao = new ReservationServiceImpl();
		ReservationVO vo = new ReservationVO();
		HttpSession session = request.getSession();
		vo.setMemberId((String) session.getAttribute("memberId")); // 세션에 저장된 아이디를 들고와야함.
		List<ReservationVO> reserve = new ArrayList<ReservationVO>();
		System.out.println(request.getParameter("name")+"!!!!!!!!!");
		
		int n = dao.reservationMemberTotalCount(vo.getMemberId());
		request.setAttribute("count", n);
		System.out.println("Mcount>>>"+n);
		reserve = dao.reservationSelectMember(vo);
		request.setAttribute("reserve", reserve);
		System.out.println("menuhome.do reserve 찍어봄");
		System.out.println(reserve);
		
		//WishList
		WishListService daoWish = new WishListServiceImpl();
		List<WishListVO> wishList = new ArrayList<WishListVO>();
		WishListVO voWish = new WishListVO();
		voWish.setMemberId((String) session.getAttribute("memberId"));
		wishList = daoWish.wishListSelectList(voWish);
		request.setAttribute("wishList", wishList);
		
		
		// member 가져오기
		MemberService daoMember = new MemberServiceImpl();
		MemberVO voMember =new MemberVO();
		voMember.setMemberId((String) session.getAttribute("memberId"));
		voMember = daoMember.memberSelect(voMember);
		request.setAttribute("m", voMember);
		
		String path = "member/membermypage";
		ViewResolve.forward(request, response, path);
		if(request.getParameter("name")!=null){ //예약입력
			CartListService cdao= new CartListServiceImpl();
			CartListVO cvo= new CartListVO();
			cvo.setMemberId((String) session.getAttribute("memberId"));
			List<CartListVO> list = new ArrayList<>();
			list=cdao.cartListSelectList(cvo);
			for(CartListVO c :list) {
				vo.setSpaceName(c.getSpaceName());
				vo.setReserveStartDate(c.getSpaceStartDate());
				vo.setReservePrice(c.getSpacePrice());
				vo.setReserveCheck(0);
				vo.setReserveId(c.getReserveId());
				vo.setReserveImg(c.getSpaceImageMain());
				vo.setSpaceId(c.getSpaceId());
				vo.setHostId(c.getHostId());
				dao.reservationInsert(vo);
			}
//		vo.setMemberId("jiwon"); // 세션에 저장된 아이디를 들고와야함.
		}
			int n = dao.reservationMemberTotalCount(vo.getMemberId());
			request.setAttribute("count", n);
			System.out.println("Mcount>>>"+n);
			reserve = dao.reservationSelectMember(vo);
			request.setAttribute("reserve", reserve);
			System.out.println("menuhome.do reserve 찍어봄");
			System.out.println(reserve);
			
			// member 가져오기
			MemberService daoMember = new MemberServiceImpl();
			MemberVO voMember =new MemberVO();
			voMember.setMemberId((String) session.getAttribute("memberId"));
			voMember = daoMember.memberSelect(voMember);
			request.setAttribute("m", voMember);
			String path = "member/membermypage";
			ViewResolve.forward(request, response, path);
	}
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
