package co.yedam.teamproject.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

@WebServlet("/AjaxMemberDetail.do")
public class AjaxMemberDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxMemberDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("memberId");
		MemberService dao = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		
		ReservationService rdao = new ReservationServiceImpl();
		ReservationVO reserve = new ReservationVO();
		List<ReservationVO> reserveList = new ArrayList<ReservationVO>();
		
		ReplyService replydao = new ReplyServiceImpl();
		List<ReplyVO> replyList = new ArrayList<ReplyVO>();
		
		member.setMemberId(mid);
		member = dao.memberSelect(member);
		request.setAttribute("m", member);
		
		reserve.setMemberId(mid);
		reserveList = rdao.reservationSelectMember(reserve);
		request.setAttribute("reserve", reserveList);
		System.out.println(reserveList);
		
		replyList = replydao.replySelectListMember(mid);
		request.setAttribute("reply", replyList);
		System.out.println(replyList);
		
		int replycount = replydao.replyCountMember(mid);
		request.setAttribute("replycount", replycount);
		
		int reservecount = rdao.reservationMemberTotalCount(mid);
		request.setAttribute("reservecount", reservecount);
		
		String page = "admin/admin/adminmemberdetail";
		ViewResolve.forward(request, response, page);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
