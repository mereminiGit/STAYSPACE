package co.yedam.teamproject.reply.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.teamproject.common.ViewResolve;
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
		
		// reply image
		String attech = multi.getOriginalFileName("replyFile");
		if (attech != null) {
			String attechFile = multi.getFilesystemName("replyFile");
			vo.setReplyImage(attechFile);
		} else {
			vo.setReplyImage("reply-default.jpg");
		}
		
		vo.setMemberId(multi.getParameter("replyMemberId"));
//		vo.setMemberId("jiwon");
		String id = multi.getParameter("replySpaceId");
		vo.setSpaceId(Integer.parseInt(multi.getParameter("replySpaceId")));
		vo.setSpaceName(multi.getParameter("replySpaceName"));
		
		// reply content
		vo.setReplyContent(multi.getParameter("replyTextarea"));
		
		// reply star
		
		int star = 0;
		if (multi.getParameter("rating") != null) {
			star = Integer.parseInt(multi.getParameter("rating"));
		}
		System.out.println("-----------------------"+multi.getParameter("rating"));
//		int starnum = 0;
//		for (int i = 0; i < star; i++) {
//			starnum++;
//		}
//		System.out.println("-----------------------"+starnum);
		vo.setReplyStar(star);
		
		int n = dao.replyInsert(vo);
		
		if(n != 0) {
			response.sendRedirect("shopdetail.do?spaceId="+id);
			/* request.setAttribute("replyMessage", "replySuccess"); */
		} else {
			request.setAttribute("replyMessage", "replyFail");
			String page = "space/shopdetail"+id;
			ViewResolve.forward(request, response, page);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
