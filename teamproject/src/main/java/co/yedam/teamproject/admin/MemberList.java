package co.yedam.teamproject.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.teamproject.common.ViewResolve;
import co.yedam.teamproject.member.service.MemberService;
import co.yedam.teamproject.member.service.MemberVO;
import co.yedam.teamproject.member.serviceImpl.MemberServiceImpl;
import co.yedam.teamproject.space.service.SpaceVO;

@WebServlet("/memberlist.do")
public class MemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberService dao = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<MemberVO>();

		members = dao.memberSelectList();
		request.setAttribute("members", members);

		int n = dao.memberSelectCount();
		request.setAttribute("count", n);

		// 페이징
		int pages = (int) Math.ceil(members.size() / 10.0); // 페이지 수
		request.setAttribute("results", members.size()); // 공간 수
		request.setAttribute("pages", pages); // 페이지 수

		String currentPage = request.getParameter("page"); // 현재페이지
		if (currentPage == null || currentPage.equals("0")) {
			currentPage = "1";
		}

		request.setAttribute("currentPage", currentPage); // 현재페이지
		int page = Integer.parseInt(currentPage);
		List<MemberVO> list = new ArrayList<MemberVO>();
		for (int i = (page - 1) * 10; i < page * 10 && i < members.size(); i++) {
			list.add(members.get(i)); // 페이지만큼 출력
		}
		
		request.setAttribute("currentPage",page);
		request.setAttribute("members", list);
		//

		String path = "admin/admin/memberlist";
		ViewResolve.forward(request, response, path);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
