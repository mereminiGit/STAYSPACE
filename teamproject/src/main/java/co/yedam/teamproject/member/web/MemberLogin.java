package co.yedam.teamproject.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.teamproject.common.Sha256;
import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;


@WebServlet("/memberlogin.do")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberLogin() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId(request.getParameter("loginId"));
		vo.setMemberPassword(Sha256.encrypt(request.getParameter("loginPassword")));
		/* System.out.println(vo.getMemberPassword()); */
		
		vo = dao.memberSelect(vo);
		
		if(vo != null) {
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberName", vo.getMemberName());
			
			request.setAttribute("messageLogin", "successLogin");
			
			session.setAttribute("memberCK", vo.getMemberCheck());
			
		} else {
			request.setAttribute("messageLogin", "failLogin");
		}
		
		String page = "main/account";
		ViewResolve.forward(request, response, page);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
