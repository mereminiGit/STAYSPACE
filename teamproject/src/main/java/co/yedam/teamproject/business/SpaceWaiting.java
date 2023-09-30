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
import co.yedam.teamproject.space.service.SpaceVO;

@WebServlet("/spacewaiting.do")
public class SpaceWaiting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SpaceWaiting() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReservationService dao = new ReservationServiceImpl();
		List<ReservationVO> hostReserve = new ArrayList<ReservationVO>();
		ReservationVO vo = new ReservationVO();
		vo.setMemberId("jiwon");
		vo.setHostId("jiwon");
		ObjectMapper objectMapper = new ObjectMapper();// json 형태의 데이터로 변환하고 날짜형 jsr310규정을 충족시키기 위해서

		hostReserve = dao.reservationSelectHost(vo);
		int n = dao.reservationHostTotalCount(vo.getHostId());
		request.setAttribute("count", n);
		System.out.println("count>>" + n);
//		System.out.println("spacewaiting찍어봅니다.."+vo);
		request.setAttribute("hostReserve", hostReserve);
//		System.out.println(hostReserve);

		// 페이징
		int pages = (int) Math.ceil(hostReserve.size() / 9.0); // 페이지 수
		request.setAttribute("results", hostReserve.size()); // 공간 수
		request.setAttribute("pages", pages); // 페이지 수

		String currentPage = request.getParameter("page"); // 현재페이지
		if (currentPage == null || currentPage.equals("0")) {
			currentPage = "1";
		}

		request.setAttribute("currentPage", currentPage); // 현재페이지
		int page = Integer.parseInt(currentPage);
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		for (int i = (page - 1) * 9; i < page * 9 && i < hostReserve.size(); i++) {
			list.add(hostReserve.get(i)); // 페이지만큼 출력
		}
		request.setAttribute("hostReserve", list);
		//

		String path = "business/business/spacewaiting";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
