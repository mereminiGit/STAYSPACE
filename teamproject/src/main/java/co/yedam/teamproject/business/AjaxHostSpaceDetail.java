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

		int replycount = replydao.replyCountSpace(Integer.parseInt(sid));
		request.setAttribute("replycount", replycount);

		int reservecount = rdao.reservationCountSpace(Integer.parseInt(sid));
		request.setAttribute("reservecount", reservecount);

		// reply페이징
		int rppages = (int) Math.ceil(replyList.size() / 5.0); // 페이지 수
		request.setAttribute("rpresults", replyList.size()); // 공간 수
		request.setAttribute("rppages", rppages); // 페이지 수

		String rpcurrentPage = request.getParameter("rppage"); // 현재페이지
		if (rpcurrentPage == null || rpcurrentPage.equals("0")) {
			rpcurrentPage = "1";
		}

		request.setAttribute("rpcurrentPage", rpcurrentPage); // 현재페이지
		int rppage = Integer.parseInt(rpcurrentPage);
		List<ReplyVO> rplist = new ArrayList<ReplyVO>();
		for (int i = (rppage - 1) * 5; i < rppage * 5 && i < replyList.size(); i++) {
			rplist.add(replyList.get(i)); // 페이지만큼 출력
		}
		request.setAttribute("replyList", rplist);
		//

		// reserve페이징
		int rspages = (int) Math.ceil(reserveList.size() / 5.0); // 페이지 수
		request.setAttribute("rsresults", reserveList.size()); // 공간 수
		request.setAttribute("rspages", rspages); // 페이지 수

		String rscurrentPage = request.getParameter("rspage"); // 현재페이지
		if (rscurrentPage == null || rscurrentPage.equals("0")) {
			rscurrentPage = "1";
		}

		request.setAttribute("rscurrentPage", rscurrentPage); // 현재페이지
		int rspage = Integer.parseInt(rscurrentPage);
		List<ReservationVO> rslist = new ArrayList<ReservationVO>();
		for (int i = (rspage - 1) * 5; i < rspage * 5 && i < reserveList.size(); i++) {
			rslist.add(reserveList.get(i)); // 페이지만큼 출력
		}
		request.setAttribute("reserveList", rslist);
		//

		String path = "business/business/businessspacedetail";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
