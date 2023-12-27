package co.yedam.teamproject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/adminhome.do")
public class AdminHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminHomeController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		String memberId = (String) session.getAttribute("memberId");

		MemberVO vo = new MemberVO();
		vo.setMemberId(memberId);
		vo = dao.memberSelect(vo);
		// System.out.println(vo.getMemberCheck());
		try {
			if (vo.getMemberCheck().equals("admin")) {
				response.sendRedirect("adminmypage.do");
			} else {
				response.sendRedirect("error.do");
			}
		} catch (Exception e) {
			response.sendRedirect("error.do");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
