package co.yedam.teamproject.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.Sendsms;

@WebServlet("/CheckPhoneNum")
public class CheckPhoneNum extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckPhoneNum() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Sendsms sms = new Sendsms();
//		sms.sendOne();
		
		String num = "1234";
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(num);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
