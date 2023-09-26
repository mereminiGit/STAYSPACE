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
import co.yedam.teamproject.space.service.SpaceService;
import co.yedam.teamproject.space.service.SpaceVO;
import co.yedam.teamproject.space.serviceImpl.SpaceServiceImpl;


// 여기는 메인화면 나오는 서블릿
@WebServlet("/home.do")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HomeController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 메인화면 공간 베스트(조회수) 8개 가져오기
		SpaceService dao = new SpaceServiceImpl();
		List<SpaceVO> vo = new ArrayList<>();
		
		// 메인화면 후기 3개 (최신순)
		ReplyService daoReply = new ReplyServiceImpl();
		List<ReplyVO> voReply = new ArrayList<ReplyVO>();
		
		vo = dao.totalSpaceSelectList();
		if(vo != null) {			
			request.setAttribute("bestSpace", vo);
		}
		
		voReply = daoReply.replySelectListRecent();
		if(voReply != null) {
			request.setAttribute("recentReply", voReply);
		}
		
		String path = "main/main";
		ViewResolve.forward(request, response, path);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
