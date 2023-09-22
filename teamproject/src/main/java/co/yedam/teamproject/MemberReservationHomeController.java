package co.yedam.teamproject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

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
		List<ReservationVO> reserve = new ArrayList<ReservationVO>();
		ReservationVO vo = new ReservationVO();
		vo.setMemberId("jiwon"); // 세션에 저장된 아이디를 들고와야함.
		
		reserve = dao.reservationSelectMember(vo);
		request.setAttribute("reserve", reserve);
		System.out.println("menuhome.do reserve 찍어봄");
		System.out.println(reserve);
		
		String path = "member/member/memberhome";
		ViewResolve.forward(request, response, path);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
