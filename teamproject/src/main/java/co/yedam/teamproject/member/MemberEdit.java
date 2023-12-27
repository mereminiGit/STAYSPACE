package co.yedam.teamproject.member;

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


@WebServlet("/memberedit.do")
public class MemberEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MemberEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo =new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		vo = dao.memberSelect(vo);
		request.setAttribute("m", vo);
		System.out.println("memberEdit찍어봄"+vo);
		String path = "member/member/memberedit";
		ViewResolve.forward(request, response, path);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
