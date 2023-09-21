package co.yedam.teamproject.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/AjaxMemberDelete.do")
public class AjaxMemberDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxMemberDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid");
		MemberService dao = new MemberServiceImpl();
		
		if(dao.memberDelete(mid) != 0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
