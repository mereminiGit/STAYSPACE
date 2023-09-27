package co.yedam.teamproject.reply.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;

@WebServlet("/replydelete.do")
public class ReplyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ReplyDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyId = request.getParameter("replyId");
		ReplyService dao = new ReplyServiceImpl();
		
		String str = "No";
		if(dao.replyDeleteId(Integer.parseInt(replyId)) != 0) {
			str = "Yes";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(str);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
