package co.yedam.teamproject.business;

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

@WebServlet("/businessmemberpage.do")
public class BusinessMemberPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BusinessMemberPage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		String memberId = (String) session.getAttribute("memberId");

		vo.setMemberId(memberId);
		vo = dao.memberSelect(vo);
		// System.out.println(vo.getMemberCheck());
		try {
			if (vo.getMemberCheck().equals("host")) {
				request.setAttribute("b", vo);
				String page = "business/business/businessmemberpage";
				ViewResolve.forward(request, response, page);
			} else {
				response.sendRedirect("error.do");
			}
		} catch (Exception e) {
			response.sendRedirect("error.do");
		}
		
		//System.out.println("비즈니스멤버 찍어봄"+vo);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
