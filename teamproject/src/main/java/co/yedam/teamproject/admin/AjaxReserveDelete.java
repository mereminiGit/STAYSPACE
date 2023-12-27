package co.yedam.teamproject.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

@WebServlet("/AjaxReserveDelete.do")
public class AjaxReserveDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxReserveDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reserveId = request.getParameter("reserveId");
		
		ReservationService dao = new ReservationServiceImpl();
		ReservationVO vo = new ReservationVO();
		
		vo.setReserveId(Integer.parseInt(reserveId));
		//System.out.println(reserveId);
		if(dao.reservationDelete(vo) != 0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}