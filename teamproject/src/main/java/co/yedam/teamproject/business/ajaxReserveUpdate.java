package co.yedam.teamproject.business;

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

@WebServlet("/ajaxReserveUpdate.do")
public class ajaxReserveUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ajaxReserveUpdate() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hostId = request.getParameter("hostId");
		String reserveId = request.getParameter("reserveId");
		String reserveCheck = request.getParameter("reserveCheck");
		String type = request.getParameter("type");
		ReservationVO vo = new ReservationVO();
		ReservationService dao = new ReservationServiceImpl();

		vo.setHostId(hostId);
		vo.setReserveId(Integer.valueOf(reserveId));
		System.out.println("타입>>"+type);
		if (Integer.valueOf(reserveCheck) == 0) {
			if (type.equals("승인")) {
				System.out.println("if안에>>>>>>"+type);
				vo.setReserveCheck(1);
			} else if (type.equals("거부")) {
				vo.setReserveCheck(2);
			}
		}
		System.out.println("호스트" + vo);
		ObjectMapper objectMapper = new ObjectMapper();
		response.setCharacterEncoding("utf-8");
		int result = dao.reservationListUpdate(vo);

		System.out.println("호스트result찍음" + result);

		if (result != 0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		} else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
