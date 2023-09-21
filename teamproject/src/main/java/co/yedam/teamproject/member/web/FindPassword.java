package co.yedam.teamproject.member.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/findpassword.do")
public class FindPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FindPassword() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberName(request.getParameter("findPwId"));
		vo.setMemberEmail(request.getParameter("findPwEmail"));
		vo = dao.memberSelectEmail(vo);
		
		String str = "findPwSuccess";
		if(vo == null) {
			str = "findPwFail";
		}
		
		request.setAttribute("findPwmessage", str);
		
		String page = "main/account";
		ViewResolve.forward(request, response, page);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
