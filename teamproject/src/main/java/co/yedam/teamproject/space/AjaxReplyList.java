package co.yedam.teamproject.space;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import co.yedam.teamproject.reply.service.ReplyService;
import co.yedam.teamproject.reply.service.ReplyVO;
import co.yedam.teamproject.reply.serviceImpl.ReplyServiceImpl;

@WebServlet("/AjaxReplyList.do")
public class AjaxReplyList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxReplyList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String sname= request.getParameter("sname");
	String param = request.getParameter("param");
	ReplyService svc = new ReplyServiceImpl();
	List<ReplyVO> list= new ArrayList<ReplyVO>();
	list=svc.replySelectList(sname);
	if(param== null) {
		ObjectMapper objectMapper=new ObjectMapper().registerModule(new JavaTimeModule());
		String json = objectMapper.writeValueAsString(list);
		
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
	} else {
		String json= "{\"data\":[";
		int cnt=0;
		for (ReplyVO vo : list) {
			json += "["+"\""+vo.getMemberId() + "\"," + 
					"\""+vo.getReplyStar() + "\"," + 
					"\""+vo.getReplyDate() + "\"," + 
					"\""+vo.getReplyImage() + "\"," + 
					"\""+vo.getReplyContent() + "\"" +"]";
			if(++cnt != list.size()) {
				json += ",";
			}
		}
		json+="]}";
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
	}
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
