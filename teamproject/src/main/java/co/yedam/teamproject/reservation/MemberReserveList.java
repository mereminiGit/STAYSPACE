package co.yedam.teamproject.reservation;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;


@WebServlet("/memberreservelist.do")
public class MemberReserveList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MemberReserveList() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setAttribute("mId", "jiwon"); //나중에 로그인되면 지우기
		
		ReservationService dao = new ReservationServiceImpl();
		List<ReservationVO> reserve = new ArrayList<ReservationVO>();
		ReservationVO vo = new ReservationVO();
		vo.setMemberId(request.getParameter("memberId"));
		      
	     for(ReservationVO d : reserve) {
    		System.out.println(d.getReserveStartDate());
    		System.out.println(d.getReserveCheckoutDate());
	     }
		
		reserve = dao.reservationSelectMember(vo);
		request.setAttribute("reserve", reserve);
		System.out.println("memberreservelist.do 찍어봄");
		System.out.println(reserve);

		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(reserve);
		

		
		
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
