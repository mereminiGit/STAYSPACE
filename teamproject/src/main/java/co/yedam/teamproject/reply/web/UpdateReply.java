package co.yedam.teamproject.reply.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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

@WebServlet("/updatereply.do")
public class UpdateReply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateReply() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReplyVO vo = new ReplyVO();
		ReplyVO votemp = new ReplyVO();
		ReplyService dao = new ReplyServiceImpl();
		
		System.out.println(Integer.parseInt(request.getParameter("replyId")));
		votemp.setReplyId(Integer.parseInt(request.getParameter("replyId")));
		votemp = dao.replySelectbyReplyId(votemp);
		int beforeStar = votemp.getReplyStar();
		System.out.println(beforeStar);
		
		// 저장할 공간
		String saveDir = getServletContext().getRealPath("image/reply");
		int maxSize = 1024 * 1024 * 100;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("EditreplySpaceId");
		/* System.out.println(id); */
		
		// reply image
		String attech = multi.getOriginalFileName("EditreplyFile");
		if (attech != null) {
			String attechFile = multi.getFilesystemName("EditreplyFile");
			vo.setReplyImage(attechFile);
		}
		
		// reply content
		if(multi.getParameter("EditreplyTextarea").length() != 0) {
			vo.setReplyContent(multi.getParameter("EditreplyTextarea"));
		}
		
		// reply star
		int star = 0;
		/* int afterStar = Integer.parseInt(multi.getParameter("ratingEdit")); */
		/* System.out.println(afterStar); */
		
		if (multi.getParameter("ratingEdit") != null) {			
			/* if (Integer.parseInt(multi.getParameter("ratingEdit")) != beforeStar) { */
				star = Integer.parseInt(multi.getParameter("ratingEdit"));
				vo.setReplyStar(star);
			/* } */		
		}
		
		// reply id
		vo.setReplyId(Integer.parseInt(request.getParameter("replyId")));		
		
		int n = dao.replyUpdate(vo);
		
		if(n != 0) {
			/* response.sendRedirect("shopdetail.do?spaceId="+id); */
			request.setAttribute("replyEditMessage", "replyEditSuccess");
			request.setAttribute("editspaceId", id);
		} else {
			request.setAttribute("replyEditMessage", "replyEditFail");
			request.setAttribute("editspaceId", id);
		}
		/*
		 * String page = "space/shopdetail.do?spaceId="+id; ViewResolve.forward(request,
		 * response, page);
		 */
		
		String url = "shopdetail.do?spaceId="+id;
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		/* response.sendRedirect("shopdetail.do?spaceId="+id); */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
