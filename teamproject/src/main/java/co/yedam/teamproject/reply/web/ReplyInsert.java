package co.yedam.teamproject.reply.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.service.ReplyVO;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;

@WebServlet("/replyinsert.do")
public class ReplyInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ReplyInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReplyVO vo = new ReplyVO();
		ReplyService dao = new ReplyServiceImpl();
		
		// 저장할 공간
		String saveDir = getServletContext().getRealPath("image/reply");
		int maxSize = 1024 * 1024 * 100;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
		
		
		vo.setMemberId(request.getParameter("replyMemberId"));
		vo.setSpaceId(Integer.parseInt(request.getParameter("replySpaceId")));
		vo.setSpaceName(request.getParameter("replySpaceName"));
		
		// reply content
		
		// reply image
		
		// reply star
		String[] star = request.getParameterValues("rating");
		int starnum = 0;
		for (int i = 0; i < star.length; i++) {
			starnum++;
		}
		System.out.println("-----------------------"+starnum);
		vo.setReplyStar(starnum);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
