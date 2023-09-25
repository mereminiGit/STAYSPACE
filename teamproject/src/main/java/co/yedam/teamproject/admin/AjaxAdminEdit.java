package co.yedam.teamproject.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.teamproject.common.Sha256;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;

@WebServlet("/AjaxAdminEdit.do")
public class AjaxAdminEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxAdminEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		String memberPassword = request.getParameter("memberPassword");
		String memberName = request.getParameter("memberName");
		String memberEmail = request.getParameter("memberEmail");
		String memberTel = request.getParameter("memberTel");
		String memberImg = request.getParameter("memberImage");
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(memberId);
		vo.setMemberName(memberName);
		vo.setMemberPassword(Sha256.encrypt(memberPassword));
		vo.setMemberEmail(memberEmail);
		vo.setMemberTel(memberTel);
		vo.setMemberImage(memberImg);
		
		System.out.println("vo찍음"+vo);
		int result = dao.memberUpdate(vo);
		
		System.out.println("ajaxmemberUpdate 찍음 ");
		System.out.println(result);
		
		Map<String, Object> resultMap = new HashMap<>();
		if(dao.memberUpdate(vo) !=0) {
			vo = dao.memberSelect(vo);
			resultMap.put("retCode", "Success");
			resultMap.put("data", vo);
			response.sendRedirect("adminmypage.do");
		}else {
			resultMap.put("retCode", "Fail");
		}
		
		ObjectMapper objectMapper = new ObjectMapper(); 
		String json = objectMapper.writeValueAsString(resultMap);
		
		response.setContentType("text/json;charset=UTF-8"); //한글깨짐방지
		response.getWriter().append(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
