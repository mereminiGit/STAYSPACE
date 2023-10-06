package co.yedam.teamproject.member;

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
//마이페이지 회원 탈퇴
@WebServlet("/ajaxUserDelete.do")
public class ajaxUserDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ajaxUserDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId=request.getParameter("memberId");
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		
		int result = dao.memberDelete(memberId);
		
		if(result !=0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
			session.invalidate();
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
