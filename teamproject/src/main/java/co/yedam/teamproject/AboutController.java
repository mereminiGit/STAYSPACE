package co.yedam.teamproject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.service.ReplyVO;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;


@WebServlet("/about.do")
public class AboutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AboutController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인화면 후기 3개 (최신순)
		ReplyService daoReply = new ReplyServiceImpl();
		List<ReplyVO> voReply = new ArrayList<ReplyVO>();
		
		voReply = daoReply.replySelectListRecent();
		if(voReply != null) {
			request.setAttribute("recentReply", voReply);
		}
		
		String path = "main/about";
		ViewResolve.forward(request, response, path);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
