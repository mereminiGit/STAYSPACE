package co.yedam.teamproject.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/AjaxEmailCheck.do")
public class AjaxEmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxEmailCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberEmail(request.getParameter("email"));
		vo = dao.memberSelectEmail(vo);
		
		String str = "Yes";
		if(vo != null) {
			str = "No";
		}
		
		response.setContentType("text/html; charset=UTF-8");//안될 수도 있어서 넣어놓음
		response.getWriter().append(str);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
