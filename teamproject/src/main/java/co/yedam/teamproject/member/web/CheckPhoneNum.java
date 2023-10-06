package co.yedam.teamproject.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.Sendsms;
import co.yedam.teamproject.member.ResetPassword;

@WebServlet("/checkphonenum.do")
public class CheckPhoneNum extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckPhoneNum() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 수신번호, 내용
		String inputPhone = request.getParameter("phoneNum");
		
		String num = ResetPassword.getRamdomPhoneCheck();
		/* String num = "123456"; */
		
		String content = "[스테이스페이스] 인증번호는 [" + num + "]입니다.";
		
		// 문자 보내는 api 연결
		
		Sendsms sms = new Sendsms(); sms.sendOne(inputPhone, content);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(num);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
