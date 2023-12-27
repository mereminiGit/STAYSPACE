package co.yedam.teamproject.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

@WebServlet("/AjaxReserveList.do")
public class AjaxReserveList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxReserveList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationService dao = new ReservationServiceImpl();
		List<ReservationVO> reserveList = new ArrayList<>();
		
		reserveList = dao.reservationSelectListCheck();
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(reserveList);
		
		response.setContentType("text/json; charset=utf-8");
		response.getWriter().print(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
