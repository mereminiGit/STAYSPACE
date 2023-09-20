package co.yedam.teamproject.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/memberregister.do")
public class MemberRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberRegister() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("registerId"));
		vo.setMemberPassword(request.getParameter(""));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
