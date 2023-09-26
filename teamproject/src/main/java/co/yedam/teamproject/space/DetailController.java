package co.yedam.teamproject.space;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.service.ReplyVO;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;
import co.yedam.teamproject.reservation.service.ReservationService;
import co.yedam.teamproject.reservation.service.ReservationVO;
import co.yedam.teamproject.reservation.serviceImpl.ReservationServiceImpl;
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;

// 여기는 공간 상세페이지입니다.
@WebServlet("/shopdetail.do")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DetailController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SpaceService dao= new SpaceServiceImpl();
		SpaceVO vo=new SpaceVO();
		
		ReplyService daoReply = new ReplyServiceImpl();
		List<ReplyVO> replyes = new ArrayList<ReplyVO>();
		
		ReservationService daoReservation = new ReservationServiceImpl();
		List<ReservationVO> reservations = new ArrayList<ReservationVO>();
		
		HttpSession session = request.getSession();
		
		vo.setSpaceId(Integer.parseInt(request.getParameter("spaceId")));
		System.out.println("spaceId찍음>>"+request.getParameter("spaceId"));
		vo=dao.spaceSelect(vo);
		request.setAttribute("s", vo);
		
//		댓글 출력 위해
		replyes = daoReply.replySelectListId(Integer.parseInt(request.getParameter("spaceId")));
		request.setAttribute("replyes", replyes);
		
//		로그인한 사람이 예약을 한 사람인지
		if (session.getAttribute("memberId") == null) {
			request.setAttribute("reservations", "");
		} else {
			System.out.println(session.getAttribute("memberId"));
			String memid = (String) session.getAttribute("memberId");
			System.out.println(memid);
			reservations = daoReservation.reservationSelectListMember((String) session.getAttribute("memberId"));
			request.setAttribute("reservations", reservations);
		}
		
		request.setAttribute("memberId", session.getAttribute("memberId"));

		String path = "space/shopdetail";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
