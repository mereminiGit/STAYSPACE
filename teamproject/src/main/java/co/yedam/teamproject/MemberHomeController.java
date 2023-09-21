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
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;


@WebServlet("/reservespace.do")
public class MemberHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MemberHomeController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mId", "jiwon"); //나중에 로그인되면 지우기
		
		ReservationService dao = new ReservationServiceImpl();
		List<ReservationVO> reserve = new ArrayList<ReservationVO>();
		ReservationVO vo = new ReservationVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		reserve = dao.reservationSelectMember(vo);
		request.setAttribute("reserve", reserve);
		System.out.println("reservespace reserve 찍어봄");
		System.out.println(reserve);

//		System.out.println(request.getParameter("memberId"));
		
	
//		System.out.println("vo 찍어봄");
//		System.out.println(vo);
//		request.setAttribute("reservation", vo);
		
		String path = "member/member/memberhome";

		ViewResolve.forward(request, response, path);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
