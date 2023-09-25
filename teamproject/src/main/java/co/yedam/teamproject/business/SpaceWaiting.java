package co.yedam.teamproject.business;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

@WebServlet("/spacewaiting.do")
public class SpaceWaiting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SpaceWaiting() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationService dao = new ReservationServiceImpl();
		List<ReservationVO> hostReserve = new ArrayList<ReservationVO>();
		ReservationVO vo = new ReservationVO();
		vo.setMemberId("jiwon");
		vo.setHostId("jiwon");
		ObjectMapper objectMapper = new ObjectMapper();// json 형태의 데이터로 변환하고 날짜형 jsr310규정을 충족시키기 위해서
		
		hostReserve = dao.reservationSelectHost(vo);
		System.out.println("spacewaiting찍어봅니다.."+vo);
		request.setAttribute("hostReserve", hostReserve);
		System.out.println(hostReserve);
		String page ="business/business/spacewaiting";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
