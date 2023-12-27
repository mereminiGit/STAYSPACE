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
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
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
		
		MemberService hostdao = new MemberServiceImpl();
		MemberVO hostvo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		
		vo.setSpaceId(Integer.parseInt(request.getParameter("spaceId")));
		System.out.println("spaceId찍음>>"+request.getParameter("spaceId"));
		dao.spaceUpdate(vo);
		vo=dao.spaceSelect(vo);
		request.setAttribute("s", vo);
		//예약날짜받기
		List<ReservationVO> reserved = new ArrayList<ReservationVO>();
		reserved=daoReservation.reservationSelectListSpace(request.getParameter("spaceId"));
		request.setAttribute("reserved", reserved);
		
		// 호스트 연락처, 이메일 받기
		System.out.println("hostId"+vo.getMemberId());
		hostvo.setMemberId(vo.getMemberId());
		hostvo = hostdao.memberSelect(hostvo);
		request.setAttribute("host", hostvo);
		
		List<SpaceVO> spaces = new ArrayList<SpaceVO>();
		/*
		 * System.out.println(vo+"ddddddddddddddddd");
		 * System.out.println(dao.spaceSelectCity(vo)+"============");
		 */
		if(dao.spaceSelectCity(vo)!= null) {
			spaces = dao.spaceSelectCity(vo);
			List<SpaceVO> list = new ArrayList<SpaceVO>();
			for(int i=0; i<spaces.size()&&i<4; i++) {
				list.add(spaces.get(i));
			}
			request.setAttribute("relatedProduct", list);
		}
		
//		댓글 출력 위해
		replyes = daoReply.replySelectListId(Integer.parseInt(request.getParameter("spaceId")));
		int pages=(int) Math.ceil(replyes.size()/4.0); //페이지 수
		request.setAttribute("results", replyes.size()); //공간 수
		request.setAttribute("pages",pages); //페이지 수
		
		String currentPage=request.getParameter("page");//현재페이지
		if(currentPage==null||currentPage.equals("0")) {
			currentPage="1";
		}
		request.setAttribute("currentPage", currentPage); //현재페이지
		int page=Integer.parseInt(currentPage);
		List<ReplyVO> list=new ArrayList<ReplyVO>();
		for(int i=(page-1)*4; i<page*4&&i<replyes.size(); i++) {
			list.add(replyes.get(i)); //페이지만큼 출력
		}
		request.setAttribute("replyes", list);
		
//		로그인한 사람이 예약을 한 사람인지
		if (session.getAttribute("memberId") == null) {
			request.setAttribute("reservations", "");
		} else {
			/* System.out.println(session.getAttribute("memberId")); */
			String memid = (String) session.getAttribute("memberId");
			int spaid = Integer.parseInt(request.getParameter("spaceId"));
			System.out.println(memid);
			System.out.println(spaid);
			reservations = daoReservation.reservationSelectListMember(memid, spaid);
			if(reservations != null) {
				System.out.println(reservations);
				request.setAttribute("reservations", reservations);				
			}
		}
		
		request.setAttribute("memberId", session.getAttribute("memberId"));
		
		String path = "space/shopdetail";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
