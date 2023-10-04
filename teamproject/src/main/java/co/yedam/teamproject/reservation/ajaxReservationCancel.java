package co.yedam.teamproject.reservation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

//마이페이지 예약취소하기
@WebServlet("/ajaxReservationCancel.do")
public class ajaxReservationCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ajaxReservationCancel() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String spaceName = request.getParameter("spaceName");
		String memberId = request.getParameter("memberId");

		String reserveId = request.getParameter("reserveId");
        ReservationService dao = new ReservationServiceImpl();

        ReservationVO vo = new ReservationVO();
        vo.setSpaceName(spaceName);
        vo.setMemberId(memberId);
        vo.setReserveId(Integer.valueOf(reserveId));
        vo.setReserveCheck(2);
        
        int result = dao.reservationUpdate(vo);
        
        System.out.println("result 찍음!!!!!");
        System.out.println(result);
        
       ObjectMapper objectMapper = new ObjectMapper();
       
       response.setCharacterEncoding("utf-8");
		if(result==1) {
			response.getWriter().write("Yes");
		}else {
			response.getWriter().write("No");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
