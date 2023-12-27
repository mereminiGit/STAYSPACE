package co.yedam.teamproject.admin;

import java.io.IOException;

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

@WebServlet("/adminmypage.do")
public class AdminMyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminMyPage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		String memberId = (String) session.getAttribute("memberId");

		MemberVO vo = new MemberVO();
		vo.setMemberId(memberId);
		vo = dao.memberSelect(vo);
		
		request.setAttribute("m", vo);
		
		String page = "admin/admin/adminmypage";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
