package co.yedam.teamproject.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;

@WebServlet("/AjaxReplyDelete.do")
public class AjaxReplyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxReplyDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rid = request.getParameter("rid");
		ReplyService dao = new ReplyServiceImpl();
		
		if(dao.replyDeleteId(Integer.parseInt(rid)) != 0) {
			response.getWriter().print("{\"retCode\": \"Success\"}");
		}
		else {
			response.getWriter().print("{\"retCode\": \"Fail\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
