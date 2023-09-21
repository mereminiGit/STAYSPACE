package co.yedam.teamproject.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;

/**
 * Servlet implementation class MemberHomeCancel
 */
@WebServlet("/memberhomecancel.do")
public class MemberHomeCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberHomeCancel() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rCheck = Integer.valueOf(request.getParameter("rCheck"));
		
		ReservationService dao = new ReservationServiceImpl();
		ReservationVO vo = new ReservationVO();
		
		
		
		
		
		
		String path = "member/member/memberhome";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
