package co.yedam.teamproject.business;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

@WebServlet("/AjaxHostSpaceDetail.do")
public class AjaxHostSpaceDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxHostSpaceDetail() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("spaceId");
		SpaceService dao = new SpaceServiceImpl();
		SpaceVO space = new SpaceVO();

		ReplyService replydao = new ReplyServiceImpl();
		List<ReplyVO> replyList = new ArrayList<ReplyVO>();

		ReservationService rdao = new ReservationServiceImpl();
		List<ReservationVO> reserveList = new ArrayList<ReservationVO>();
		space.setSpaceId(Integer.parseInt(sid));
		space = dao.spaceSelect(space);
		request.setAttribute("s", space);
		System.out.println(space);

		replyList = replydao.replySelectListId(Integer.parseInt(sid));
		request.setAttribute("reply", replyList);

		reserveList = rdao.reservationSelectListSpace(sid);
		request.setAttribute("reserve", reserveList);

		String path = "business/business/businessspacedetail";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
